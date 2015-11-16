# run_analysis.R

##Summary

The run_analysis.R script ingests two different datasets, each consisting of
three different files, and binds them together into a single dataset. 

The datasets are taken from the "Human Activity Recognition Using Smartphones
Dataset Version 1.0" experiment. The data consists of accelerometers and gyroscopic measurements
along three axes along with some derived quantities 


##Data format and description
The run_analysis.R script loads different files in order to build a tidy
dataset. The files are the following, where "*" stands for either the "test" or "train" datasets:

* activity_labels.txt: contains the integer identifier of the activity
  performed. The activities are (1) Walking, (2) Walking upstairs, (3) Walking
  Downstairs, (4) Sitting, (5) Standing, and (6) Laying.

* features.txt: contains all the variable names in the original datasets. More
  information is available in the Codebook.md file attached with this submission.

* subject_*.txt: contains a list of integers identifying the subject that
  performed the activities.

* y_*.txt: contains a list of integers identifying what activity was performed..

* X_*.txt: contains the actual measured/calculated quantities as defined in the
  features.txt file. More information in the Codebook.md file attached with this
  submission. 



##Data Analysis
The analysis performed by the run_analysis.R script is straightforward. First,
the necessary files are loaded



##Output



