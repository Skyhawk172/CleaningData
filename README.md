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

* activity_labels.txt (1 column): contains the integer identifier of the activity
  performed. The activities are (1) Walking, (2) Walking upstairs, (3) Walking
  Downstairs, (4) Sitting, (5) Standing, and (6) Laying.

* features.txt (1 column): contains all the variable names in the original datasets. More
  information is available in the Codebook.md file attached with this submission.

* subject_*.txt (1 column): contains a list of integers identifying the subject that
  performed the activities.

* y_*.txt (1 column): contains a list of integers identifying what activity was performed..

* X_*.txt (561 columns): contains the actual measured/calculated quantities as listed in the
  features.txt file. This file, for both datasets, has 561 rows. More
  information in the Codebook.md file attached with this submission. 

The "test" and "train" datasets contain 2947 and 7352 rows respectively.



##Data Analysis
The analysis performed by the run_analysis.R script is straightforward. 

1. Load all the input files, including the references files such as the subject
listing, the activity labels, and the variable names (features.txt).

2. 


##Output



