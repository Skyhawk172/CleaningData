# run_analysis.R

##Summary

The run_analysis.R script ingests two different datasets, each consisting of
three different files, and binds them together into a single dataset. 

The datasets are taken from the "Human Activity Recognition Using Smartphones
Dataset Version 1.0" experiment. The data consists of accelerometers and gyroscopic measurements
along three axes along with some derived quantities 


##Input File Format & Description
The run_analysis.R script loads different files in order to build a tidy
dataset. The files are the following, where "*" stands for either the "test" or "train" datasets:

* activity_labels.txt (2 columns): contains the integer identifier of the activity
  performed and the activity name. The activity names are (1) Walking, (2)
  Walking upstairs, (3) Walking Downstairs, (4) Sitting, (5) Standing, and (6) Laying.

* features.txt (2 columns): contains integer identifier with all the variable
  names in the original datasets. More information is available in the
  Codebook.md file attached with this submission. 

* subject_*.txt (1 column): contains a list of integers identifying the subject that
  performed the activities.

* y_*.txt (1 column): contains a list of integers identifying what activity was performed..

* X_*.txt (561 columns): contains the actual measured/calculated quantities as listed in the
  features.txt file. This file, for both datasets, has 561 rows. More
  information in the Codebook.md file attached with this submission. 

The "test" and "train" datasets contain 2947 and 7352 rows respectively.



##Data Analysis
The analysis performed by the run_analysis.R script is straightforward: 

1. Load all the input files listed above, including the references files such as
the subject listing, the activity labels, and the variable names (features.txt).

2. Select only the columns of the X_"*".txt that contain the words "mean()"
and "std()" and bind them with the subject_"*".txt, and y_"*".txt files. The first
column is the subject identifier, second column is the actitity identifyer, and
the remaining columns (66) contain only the "mean()" and "std()" measurements.

3. Replace the second column's activity identifies by the appropriate name of
the activity based on the "activity_labels.txt" file.

4. Aggregate all the measurement for each subject and activity and take the
average of each column.  This is now the tidy dataset.

5. Format the descriptive variable names for clarity. In particular, remove the
"()" from the variable names. Also add the label "Avg" to each variable to
clarify that the tidy dataset contains averaged values.

6. Write the tidy dataset to an output file using the write.table() command.


##Output

The output of the run_analysis.R script is a tidy table containing 180 rows and
68 columns, i.e. 30 different subjects who each performed six activities. All
the columns are appropriately named and described in the Codebook.md file
attached with this submission. 


