# Clear environment variables:
rm(list = ls())

root_dir="./UCI HAR Dataset"

#############################################################################
# Get the activity labels to later rename in the tidytable
#############################################################################
file="activity_labels.txt"
activity_labels <- read.table(paste(root_dir,file,sep="/"),as.is=TRUE)


#############################################################################
# Get the column indices containing only the mean() and std() measurements:
#############################################################################
file="features.txt"
features <- read.table(paste(root_dir,file,sep="/"),as.is=TRUE)
mean_idx <- grep("mean()",features[[2]], fixed=TRUE)
stdr_idx <- grep("std()",features[[2]], fixed=TRUE)

all_idx  <- sort( c(mean_idx,stdr_idx) )
allnames <- features[all_idx,]$V2


#############################################################################
# Read the X_test/train.txt dataset and extract the relevant mean/std columns
# and then read the subject.txt and y_test/train.txt files and bind the 
# columns:
#############################################################################
set=c("test","train")
for( iset in set ){
  print(iset)
  file=paste("X_",iset,".txt", sep="")
  X_test <- read.table(paste(root_dir,iset,file,sep="/"))
  tempdata <- X_test[,all_idx]
  colnames(tempdata) <- allnames

  file=paste("subject_",iset,".txt", sep="")
  subject_test <- read.table(paste(root_dir,iset,file,sep="/"))

  file=paste("y_",iset,".txt", sep="")
  y_test <- read.table(paste(root_dir,iset,file,sep="/"))

  # MAP ACTIVITY LABEL TO ACTUAL ACTIVITY NAME
  activity <- 0
  for( i in 1:nrow(y_test)){
    activity[i] <- activity_labels$V2[ y_test[i,1] ]
  }

  
  # Bind the subject, activity name, and appropriate columns of data:

  # if the merged dataset does exist, append to it
  if (exists("tidydata")){
    print("already exists")
    temp_dataset <- cbind(subject_test, activity, tempdata)
    tidydata <- rbind(tidydata, temp_dataset)
    rm(temp_dataset)
  }
  else if(!exists("tidydata")){
    print("create data frame")
    tidydata <- cbind(subject_test, activity, tempdata)
  }
  
}


#############################################################################
# RENAME FIRST AND SECOND COLUMNS OF TIDYDATA:
#############################################################################
colnames(tidydata)[1] <- "Subject"
colnames(tidydata)[2] <- "Activity"


#############################################################################
# AVERAGES FOR EACH SUBJECT AND ACTIVITY:
#############################################################################
aggregated <- aggregate(tidydata[-1:-2],by=list(Subject=tidydata$Subject,Activity=tidydata$Activity), mean)
aggregated <- aggregated[ order(aggregated$Subject), ]


#############################################################################
# RENAME COLUMNS OF AGGREGATED DATA TO REFLECT AVERAGE:
#############################################################################
colnames(aggregated)[-1:-2] <- paste("Average",names(aggregated)[-1:-2])


#############################################################################
# Write AGGREGATED table to output file:
#############################################################################
write.table(aggregated, file="run_analysis_output.txt", row.names=FALSE)

data <- read.table("run_analysis_output.txt", header = TRUE)
View(data)
