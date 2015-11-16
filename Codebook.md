# Codebook run_analysis.R

## Code book:
* info about the variables/units
* info about summary choices that were made
* info about experimental study design used, i.e. context
* common format in word/text file, or markdown
* should have a “study design” section

##Variable naming and listing

This section is taken from the original dataset README file ():

The features selected for this database come from the accelerometer and
gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals
(prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they
were filtered using a median filter and a 3rd order low pass Butterworth filter
with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration
signal was then separated into body and gravity acceleration signals
(tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter
with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in
time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the
magnitude of these three-dimensional signals were calculated using the Euclidean
norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag,
tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals
producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag,
fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain
signals).

These signals were used to estimate variables of the feature vector for each
pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


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
