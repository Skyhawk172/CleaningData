# run_analysis.R

##Summary

The run_analysis.R script ingests two different datasets, each consisting of
three different files, and binds them together into a single, tidy dataset. 

The datasets are taken from the "Human Activity Recognition Using Smartphones
Dataset Version 1.0" experiment. The data consists of accelerometers and
gyroscopic measurements along three axes along with some derived
quantities. More information is available in the attached Codebook.md file.


##Input Files Description

The run_analysis.R script loads various files in order to build a tidy dataset.
The script is to be co-located with a subfolder named "UCI HAR Dataset", which
itself contains the "test" and "train" subfolders.

The necesary files to be read are the following, where "*" stands for either the
"test" or "train" datasets:

* activity_labels.txt (2 columns): contains the integer identifier of the activity
  performed and the activity name. The activity names are (1) Walking, (2)
  Walking upstairs, (3) Walking Downstairs, (4) Sitting, (5) Standing, and (6) Laying.

* features.txt (2 columns): contains integer identifier with all the variable
  names in the original datasets. More information is available in the
  Codebook.md file attached with this submission. 

* subject_*.txt (1 column): contains a list of integers identifying the subject that
  performed the activities.

* y_*.txt (1 column): contains a list of integers identifying what activity was performed..

* X_*.txt (561 columns): contains the actual measured/calculated quantities as
  listed in the features.txt file. This file has 561 rows (for both
  datasets). More information is available in the Codebook.md file attached with
  this submission.

The first two files (activity_labels.txt and features.txt) should be located in
the subfolder "UCI HAR Dataset", whereas the other files should be located
in their respective "test" or "train" folder.

Note that the "test" and "train" datasets contain 2947 and 7352 rows
respectively.



##Data Analysis 

The analysis performed by the run_analysis.R script is
straightforward.  All the user needs to type in RStudio, given the necessary
input files are found, is the command:

 "source("run_analysis.R")". 

The script will ingest both datasets ("test" and "train") in the same execution.

In particular, the run_analysis.R script performs the following tasks:

1. Load all the input files listed above, including the references files such as
the subject listing, the activity labels, and the variable names (features.txt).

2. Select only the columns of the X_test/train.txt that contain the words
"mean()" and "std()" and bind them with the single-column
subject_test/train.txt, and y_test/train.txt files. The first column is the
subject identifier, the second column is the actitity identifyer, and the
remaining columns (66) contain only the "mean()" and "std()" measurements.

3. Replace the second column's activity identifiers by the appropriate name of
the activity based on the "activity_labels.txt" file.

4. Aggregate all the measurement for each subject and activity and take the
average of each column.  This is now the tidy dataset.

5. Format the descriptive variable names for clarity. In particular, remove the
"()" from the variable names. Also add the label "Avg" to each variable to
clarify that the tidy dataset contains averaged values.

6. Write the tidy dataset to an output file using the write.table() command. The
default output name is "run_analysis_output.txt".


##Output

The output of the run_analysis.R script is a tidy table containing 180 rows and
68 columns, i.e. 30 different subjects who each performed six activities. All
the columns are appropriately named and described in the Codebook.md file
attached with this submission. 


