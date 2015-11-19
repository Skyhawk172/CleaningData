# Clear environment variables:
rm(list = ls())

# Set data root directory:
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


#############################################################################
# Format the variable names for clarity:
#############################################################################
# remove () from variable names
allnames <- gsub("\\()","",features[all_idx,]$V2)

# replace BodyBody by Body in some variable names
allnames <- gsub("BodyBody","Body",allnames)

# re-format variable names: 
# "Body/Gravity" + "Acc/Gyro/Jerk/Mag" + "XYZ" + "_" + "time/freq" + "mean/std"
a=strsplit(allnames,"-")
for(i in 1:length(allnames)){
  temp <- unlist(strsplit(allnames[[i]],"-"))
  
  if(substring(temp[[1]],1,1)=="t"){tag <- "T"}
  else if(substring(temp[[1]],1,1)=="f") {tag <- "F"}

  if(length(temp)==2){ allnames[[i]] <- paste(substring(temp[[1]],2),"_",tag,temp[[2]], sep="") }
  if(length(temp)==3){ allnames[[i]] <- paste(substring(temp[[1]],2),temp[[3]],"_",tag,temp[[2]], sep="") }
}


#############################################################################
# Read the X_test/train.txt datasets and extract the relevant mean/std 
# columns and then read the subject.txt and y_test/train.txt files and  
# bind the columns: 
#############################################################################
set=c("test","train")
for( iset in set ){
  print(paste("Reading", iset))
  file=paste("X_",iset,".txt", sep="")
  X_set <- read.table(paste(root_dir,iset,file,sep="/"))
  print(dim(X_set))
  
  # use only the columns with "mean()" and "std()" in the variable names:
  tempdata <- X_set[,all_idx]
  colnames(tempdata) <- allnames

  file=paste("subject_",iset,".txt", sep="")
  subject_set <- read.table(paste(root_dir,iset,file,sep="/"))
  print(dim(subject_set))
  
  file=paste("y_",iset,".txt", sep="")
  y_set <- read.table(paste(root_dir,iset,file,sep="/"))
  print(dim(y_set))

  # MAP ACTIVITY LABEL TO ACTUAL ACTIVITY NAME
  activity <- 0
  for( i in 1:nrow(y_set)){
    activity[i] <- activity_labels$V2[ y_set[i,1] ] }

  # If the tidy dataset exists, append new rows to it. If it does not
  # exist, only bind the subject, activity name, and appropriate columns:
  if (exists("tidydata")){
    print("dataset already exists")
    temp_dataset <- cbind(subject_set, activity, tempdata)
    tidydata     <- rbind(tidydata, temp_dataset)
    rm(temp_dataset)
  }
  else if(!exists("tidydata")){
    print("creating data frame")
    tidydata <- cbind(subject_set, activity, tempdata)
  }
  
}


#############################################################################
# Rename all columns since we're about to take the average:
#############################################################################
colnames(tidydata)[1] <- "Subject"
colnames(tidydata)[2] <- "Activity"
colnames(tidydata)[-1:-2] <- paste("Avg-",names(tidydata)[-1:-2], sep="")


#############################################################################
# Take averages for each subject and activity and re-order rows by subject:
#############################################################################
aggregated <- aggregate(tidydata[-1:-2],by=list(Subject=tidydata$Subject,Activity=tidydata$Activity), mean)
aggregated <- aggregated[ order(aggregated$Subject), ]


#############################################################################
# Write AGGREGATED table to output file:
#############################################################################
write.table(aggregated, file="run_analysis_output.txt", row.names=FALSE)

data <- read.table("run_analysis_output.txt", header = TRUE)
View(data)
