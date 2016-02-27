#The summary.csv dataset

The summary.csv dataset is a comma separated file that contains an activity label, a subject label, and 79 variables.  Each of the 79 variables are features calculated from accelerometer data gathered from test subjects who performed certain activities while wearing Samsung phones equiped with an accelerometer and gyroscope. 

##Activity: 
The activity field is a factor field containing the activity the test subject was undertaking during the observations described by the remaining variables.  The possible values: 
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

##Subject:
The sujbect field is a Integer indicating which subject was observed. 

##Features
The remaining 79 fields are features calculated from accelerometer and gyroscope data gathered from the subject (as indicated by the subject field) while the subject performed the acivity (as indicated by the activity field).  All are numbers between -1 and 1. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Then, a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean: Mean value
std: Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

Finally, the mean of each of these varaiables were calculated (mean of mean, mean of std) for all observations for each activity and subject grouping. 

Here is a listing of these 79 variables (preceded by the sequence in which it appears in the file):
                                                          
 [3] "mean_of_tBodyAcc-mean()-X"              
 [4] "mean_of_tBodyAcc-mean()-Y"              
 [5] "mean_of_tBodyAcc-mean()-Z"              
 [6] "mean_of_tBodyAcc-std()-X"               
 [7] "mean_of_tBodyAcc-std()-Y"               
 [8] "mean_of_tBodyAcc-std()-Z"               
 [9] "mean_of_tGravityAcc-mean()-X"           
[10] "mean_of_tGravityAcc-mean()-Y"           
[11] "mean_of_tGravityAcc-mean()-Z"           
[12] "mean_of_tGravityAcc-std()-X"            
[13] "mean_of_tGravityAcc-std()-Y"            
[14] "mean_of_tGravityAcc-std()-Z"            
[15] "mean_of_tBodyAccJerk-mean()-X"          
[16] "mean_of_tBodyAccJerk-mean()-Y"          
[17] "mean_of_tBodyAccJerk-mean()-Z"          
[18] "mean_of_tBodyAccJerk-std()-X"           
[19] "mean_of_tBodyAccJerk-std()-Y"           
[20] "mean_of_tBodyAccJerk-std()-Z"           
[21] "mean_of_tBodyGyro-mean()-X"             
[22] "mean_of_tBodyGyro-mean()-Y"             
[23] "mean_of_tBodyGyro-mean()-Z"             
[24] "mean_of_tBodyGyro-std()-X"              
[25] "mean_of_tBodyGyro-std()-Y"              
[26] "mean_of_tBodyGyro-std()-Z"              
[27] "mean_of_tBodyGyroJerk-mean()-X"         
[28] "mean_of_tBodyGyroJerk-mean()-Y"         
[29] "mean_of_tBodyGyroJerk-mean()-Z"         
[30] "mean_of_tBodyGyroJerk-std()-X"          
[31] "mean_of_tBodyGyroJerk-std()-Y"          
[32] "mean_of_tBodyGyroJerk-std()-Z"          
[33] "mean_of_tBodyAccMag-mean()"             
[34] "mean_of_tBodyAccMag-std()"              
[35] "mean_of_tGravityAccMag-mean()"          
[36] "mean_of_tGravityAccMag-std()"           
[37] "mean_of_tBodyAccJerkMag-mean()"         
[38] "mean_of_tBodyAccJerkMag-std()"          
[39] "mean_of_tBodyGyroMag-mean()"            
[40] "mean_of_tBodyGyroMag-std()"             
[41] "mean_of_tBodyGyroJerkMag-mean()"        
[42] "mean_of_tBodyGyroJerkMag-std()"         
[43] "mean_of_fBodyAcc-mean()-X"              
[44] "mean_of_fBodyAcc-mean()-Y"              
[45] "mean_of_fBodyAcc-mean()-Z"              
[46] "mean_of_fBodyAcc-std()-X"               
[47] "mean_of_fBodyAcc-std()-Y"               
[48] "mean_of_fBodyAcc-std()-Z"               
[49] "mean_of_fBodyAcc-meanFreq()-X"          
[50] "mean_of_fBodyAcc-meanFreq()-Y"          
[51] "mean_of_fBodyAcc-meanFreq()-Z"          
[52] "mean_of_fBodyAccJerk-mean()-X"          
[53] "mean_of_fBodyAccJerk-mean()-Y"          
[54] "mean_of_fBodyAccJerk-mean()-Z"          
[55] "mean_of_fBodyAccJerk-std()-X"           
[56] "mean_of_fBodyAccJerk-std()-Y"           
[57] "mean_of_fBodyAccJerk-std()-Z"           
[58] "mean_of_fBodyAccJerk-meanFreq()-X"      
[59] "mean_of_fBodyAccJerk-meanFreq()-Y"      
[60] "mean_of_fBodyAccJerk-meanFreq()-Z"      
[61] "mean_of_fBodyGyro-mean()-X"             
[62] "mean_of_fBodyGyro-mean()-Y"             
[63] "mean_of_fBodyGyro-mean()-Z"             
[64] "mean_of_fBodyGyro-std()-X"              
[65] "mean_of_fBodyGyro-std()-Y"              
[66] "mean_of_fBodyGyro-std()-Z"              
[67] "mean_of_fBodyGyro-meanFreq()-X"         
[68] "mean_of_fBodyGyro-meanFreq()-Y"         
[69] "mean_of_fBodyGyro-meanFreq()-Z"         
[70] "mean_of_fBodyAccMag-mean()"             
[71] "mean_of_fBodyAccMag-std()"              
[72] "mean_of_fBodyAccMag-meanFreq()"         
[73] "mean_of_fBodyBodyAccJerkMag-mean()"     
[74] "mean_of_fBodyBodyAccJerkMag-std()"      
[75] "mean_of_fBodyBodyAccJerkMag-meanFreq()" 
[76] "mean_of_fBodyBodyGyroMag-mean()"        
[77] "mean_of_fBodyBodyGyroMag-std()"         
[78] "mean_of_fBodyBodyGyroMag-meanFreq()"    
[79] "mean_of_fBodyBodyGyroJerkMag-mean()"    
[80] "mean_of_fBodyBodyGyroJerkMag-std()"     
[81] "mean_of_fBodyBodyGyroJerkMag-meanFreq()"