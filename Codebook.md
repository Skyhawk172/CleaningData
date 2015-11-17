# Codebook run_analysis.R


## Context & Study Design 
------------------------------------------------------------------
Human Activity Recognition Using Smartphones Dataset
Version 1.0
------------------------------------------------------------------
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
------------------------------------------------------------------

The following is mostly based on the original dataset README file listed
above. For the purpose of our project, the dataset was parsed and the varible
naming convention modified for sake of clarity. Both our tidier dataset and the
naming convention are described below.

The experiments have been carried out with a group of 30 volunteers within an
age bracket of 19-48 years. Each person performed six activities (WALKING,
WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a
smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer
and gyroscope, we captured 3-axial linear acceleration and 3-axial angular
velocity at a constant rate of 50Hz. The experiments have been video-recorded to
label the data manually. The obtained dataset has been randomly partitioned into
two sets, where 70% of the volunteers was selected for generating the training
data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying
noise filters and then sampled in fixed-width sliding windows of 2.56 sec and
50% overlap (128 readings/window). The sensor acceleration signal, which has
gravitational and body motion components, was separated using a Butterworth
low-pass filter into body acceleration and gravity. The gravitational force is
assumed to have only low frequency components, therefore a filter with 0.3 Hz
cutoff frequency was used. From each window, a vector of features was obtained
by calculating variables from the time and frequency domain. See
'features_info.txt' for more details.



##Code Book

This section is partly based on the original dataset README file, with only
small changes to the actual naming convention:


#### Naming Convention

The features selected for this database come from the accelerometer and
gyroscope 3-axial raw signals AccXYZ-T and GyroXYZ-T. These time domain signals
(suffix 'T' to denote time) were captured at a constant rate of 50 Hz. Then they
were filtered using a median filter and a 3rd order low pass Butterworth filter
with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration
signal was then separated into body and gravity acceleration signals
(BodyAccXYZ-T and GravityAccXYZ-T) using another low pass Butterworth filter
with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in
time to obtain Jerk signals (BodyAccJerkXYZ-T and BodyGyroJerkXYZ-T). Also the
magnitude of these three-dimensional signals were calculated using the Euclidean
norm (BodyAccMag-T, GravityAccMag-T, BodyAccJerkMag-T, BodyGyroMag-T,
BodyGyroJerkMag-T).

Additionnally, a Fast Fourier Transform (FFT) was applied to some of these
signals producing BodyAccXYZ-F, BodyAccJerkXYZ-F, BodyGyroXYZ-F,
BodyAccJerkMag-F, BodyGyroMag-F, BodyGyroJerkMag-F. (Note the 'F' to indicate
frequency domain signals).

These signals were used to estimate variables of the feature vector for each
pattern: 'XYZ' is used to denote 3-axial signals in the X, Y and Z directions
respectively.


#### Summary Choices

For the purpose of clarity, we down selected only the "mean()" and "std()"
variables from  the original dataset. Moreover, the values reported in the tidy
dataset are average values for each subject and activity.


#### Variable Units

The acceleration signal from the smartphone accelerometer XYZ axis are reported
in standard gravity units 'g'. The angular velocity vector measured by the
gyroscope for each window sample are reported in units of radians/second. 


#### Variable Listing

* Subject                   
* Activity                  
* Avg-BodyAccX_Tmean        
* Avg-BodyAccY_Tmean       
* Avg-BodyAccZ_Tmean        
* Avg-BodyAccX_Tstd         
* Avg-BodyAccY_Tstd         
* Avg-BodyAccZ_Tstd        
* Avg-GravityAccX_Tmean     
* Avg-GravityAccY_Tmean     
* Avg-GravityAccZ_Tmean     
* Avg-GravityAccX_Tstd     
* Avg-GravityAccY_Tstd      
* Avg-GravityAccZ_Tstd      
* Avg-BodyAccJerkX_Tmean    
* Avg-BodyAccJerkY_Tmean   
* Avg-BodyAccJerkZ_Tmean    
* Avg-BodyAccJerkX_Tstd     
* Avg-BodyAccJerkY_Tstd     
* Avg-BodyAccJerkZ_Tstd    
* Avg-BodyGyroX_Tmean       
* Avg-BodyGyroY_Tmean       
* Avg-BodyGyroZ_Tmean       
* Avg-BodyGyroX_Tstd       
* Avg-BodyGyroY_Tstd        
* Avg-BodyGyroZ_Tstd        
* Avg-BodyGyroJerkX_Tmean   
* Avg-BodyGyroJerkY_Tmean  
* Avg-BodyGyroJerkZ_Tmean   
* Avg-BodyGyroJerkX_Tstd    
* Avg-BodyGyroJerkY_Tstd    
* Avg-BodyGyroJerkZ_Tstd   
* Avg-BodyAccMag_Tmean      
* Avg-BodyAccMag_Tstd       
* Avg-GravityAccMag_Tmean   
* Avg-GravityAccMag_Tstd   
* Avg-BodyAccJerkMag_Tmean  
* Avg-BodyAccJerkMag_Tstd   
* Avg-BodyGyroMag_Tmean     
* Avg-BodyGyroMag_Tstd     
* Avg-BodyGyroJerkMag_Tmean 
* Avg-BodyGyroJerkMag_Tstd  
* Avg-BodyAccX_Fmean        
* Avg-BodyAccY_Fmean       
* Avg-BodyAccZ_Fmean        
* Avg-BodyAccX_Fstd         
* Avg-BodyAccY_Fstd         
* Avg-BodyAccZ_Fstd        
* Avg-BodyAccJerkX_Fmean    
* Avg-BodyAccJerkY_Fmean    
* Avg-BodyAccJerkZ_Fmean    
* Avg-BodyAccJerkX_Fstd    
* Avg-BodyAccJerkY_Fstd     
* Avg-BodyAccJerkZ_Fstd     
* Avg-BodyGyroX_Fmean       
* Avg-BodyGyroY_Fmean      
* Avg-BodyGyroZ_Fmean       
* Avg-BodyGyroX_Fstd        
* Avg-BodyGyroY_Fstd        
* Avg-BodyGyroZ_Fstd       
* Avg-BodyAccMag_Fmean      
* Avg-BodyAccMag_Fstd       
* Avg-BodyAccJerkMag_Fmean  
* Avg-BodyAccJerkMag_Fstd  
* Avg-BodyGyroMag_Fmean     
* Avg-BodyGyroMag_Fstd      
* Avg-BodyGyroJerkMag_Fmean 
* Avg-BodyGyroJerkMag_Fstd 
