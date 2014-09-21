Code book 
=================

Citing the original documentation for the dataset "Human Activity Recognition Using Smartphones Data Set":

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."

Here we explain a little bit the variables from the output files after running the script run_analysis.R.


* subject, a factor number (from 1 to 30) that identifies 1 out of the 30 subjects. 
* activityLabel, a string that identifies one activity: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
* TimeBodyAccelerometer-mean-X, mean value of the body acceleration for X-axis
* TimeBodyAccelerometer-mean-Y, mean value of the body acceleration for Y-axis
* TimeBodyAccelerometer-mean-Z, mean value of the body acceleration for Z-axis
* TimeBodyAccelerometer-std-X, standard deviation body value of the acceleration for X-axis
* TimeBodyAccelerometer-std-Y, standard deviation body value of the acceleration for Y-axis
* TimeBodyAccelerometer-std-Z, standard deviation body value of the acceleration for Z-axis
* TimeGravityAccelerometer-mean-X, mean value of the gravity acceleration for X-axis
* TimeGravityAccelerometer-mean-Y, mean value of the gravity acceleration for Y-axis
* TimeGravityAccelerometer-mean-Z, mean value of the gravity acceleration for Z-axis
* TimeGravityAccelerometer-std-X, standard deviation gravity value of the acceleration for X-axis
* TimeGravityAccelerometer-std-Y, standard deviation gravity value of the acceleration for Y-axis
* TimeGravityAccelerometer-std-Z, standard deviation gravity value of the acceleration for Z-axis
* TimeBodyAccelerometerJerk-mean-X, mean value of the body acceleration for X-axis and Jerk signal
* TimeBodyAccelerometerJerk-mean-Y, mean value of the body acceleration for Y-axis and Jerk signal
* TimeBodyAccelerometerJerk-mean-Z, mean value of the body acceleration for Z-axis and Jerk signal
* TimeBodyAccelerometerJerk-std-X, standard deviation value of the body acceleration for X-axis and Jerk signal
* TimeBodyAccelerometerJerk-std-Y, standard deviation value of the body acceleration for Y-axis and Jerk signal
* TimeBodyAccelerometerJerk-std-Z, standard deviation value of the body acceleration for Z-axis and Jerk signal
* TimeBodyGyroscope-mean-X, mean value of the body gyroscope signal for X_axis
* TimeBodyGyroscope-mean-Y, mean value of the body gyroscope signal for Y_axis
* TimeBodyGyroscope-mean-Z, mean value of the body gyroscope signal for Z_axis
* TimeBodyGyroscope-std-X, standard deviation value of the body gyroscope signal for X_axis
* TimeBodyGyroscope-std-Y, standard deviation value of the body gyroscope signal for Y_axis
* TimeBodyGyroscope-std-Z, standard deviation value of the body gyroscope signal for Z_axis
* TimeBodyGyroscopeJerk-mean-X, mean value of the body gyroscope signal for X_axis and Jerk signal 
* TimeBodyGyroscopeJerk-mean-Y, mean value of the body gyroscope signal for Y_axis and Jerk signal
* TimeBodyGyroscopeJerk-mean-Z, mean value of the body gyroscope signal for Z_axis and Jerk signal
* TimeBodyGyroscopeJerk-std-X, standard deviation value of the body gyroscope signal for X_axis and Jerk signal
* TimeBodyGyroscopeJerk-std-Y, standard deviation value of the body gyroscope signal for Y_axis and Jerk signal
* TimeBodyGyroscopeJerk-std-Z, standard deviation value of the body gyroscope signal for Z_axis and Jerk signal
* TimeBodyAccelerometerMagnitude-mean, mean value of the norm for the body acceleration
* TimeBodyAccelerometerMagnitude-std, standard deviation value of the norm for the body acceleration
* TimeGravityAccelerometerMagnitude-mean, mean value of the norm for the gravity acceleration
* TimeGravityAccelerometerMagnitude-std, standard deviation value of the norm for the gravity acceleration
* TimeBodyAccelerometerJerkMagnitude-mean, mean value of the norm for the body acceleration and Jerk signal
* TimeBodyAccelerometerJerkMagnitude-std, standard deviation value of the norm for the body acceleration and Jerk signal
* TimeBodyGyroscopeMagnitude-mean, mean value of the norm for the body gyroscope signal
* TimeBodyGyroscopeMagnitude-std, standard deviation value of the norm for the body gyroscope signal
* TimeBodyGyroscopeJerkMagnitude-mean, mean value of the norm for the body gyroscope signal and Jerk signal 
* TimeBodyGyroscopeJerkMagnitude-std, standard deviation value of the norm for the body gyroscope signal and Jerk signañ
* FrequencyBodyAccelerometer-mean-X, mean value of the frequency body acceleration for X-axis
* FrequencyBodyAccelerometer-mean-Y, mean value of the frequency body acceleration for Y-axis
* FrequencyBodyAccelerometer-mean-Z, mean value of the frequency body acceleration for Z-axis
* FrequencyBodyAccelerometer-std-X, standard deviation value of the frequency body acceleration for X-axis
* FrequencyBodyAccelerometer-std-Y, standard deviation value of the frequency body acceleration for Y-axis
* FrequencyBodyAccelerometer-std-Z, standard deviation value of the frequency body acceleration for Z-axis
* FrequencyBodyAccelerometer-meanFrequency-X, mean frequency of the body acceleration for X-axis
* FrequencyBodyAccelerometer-meanFrequency-Y, mean frequency of the body acceleration for Y-axis
* FrequencyBodyAccelerometer-meanFrequency-Z, mean frequency of the body acceleration for Z-axis
* FrequencyBodyAccelerometerJerk-mean-X, mean frequency of the body acceleration for X-axis and Jerk signal
* FrequencyBodyAccelerometerJerk-mean-Y, mean frequency of the body acceleration for Y-axis and Jerk signal
* FrequencyBodyAccelerometerJerk-mean-Z, mean frequency of the body acceleration for Z-axis and Jerk signal
* FrequencyBodyAccelerometerJerk-std-X, standard deviation value of the frequency body acceleration for X-axis and Jerk signal
* FrequencyBodyAccelerometerJerk-std-Y, standard deviation value of the frequency body acceleration for Y-axis and Jerk signal
* FrequencyBodyAccelerometerJerk-std-Z, standard deviation value of the frequency body acceleration for Z-axis and Jerk signal
* FrequencyBodyAccelerometerJerk-meanFrequency-X, mean frequency of the body acceleration for X-axis and Jerk signal 
* FrequencyBodyAccelerometerJerk-meanFrequency-Y, mean frequency of the body acceleration for Y-axis and Jerk signal 
* FrequencyBodyAccelerometerJerk-meanFrequency-Z, mean frequency of the body acceleration for Z-axis and Jerk signal 
* FrequencyBodyGyroscope-mean-X, mean value of the frequency body gyroscope signal for X_axis
* FrequencyBodyGyroscope-mean-Y, mean value of the frequency body gyroscope signal for Y_axis
* FrequencyBodyGyroscope-mean-Z, mean value of the frequency body gyroscope signal for Z_axis
* FrequencyBodyGyroscope-std-X, standard deviation value of the frequency body gyroscope signal for X_axis
* FrequencyBodyGyroscope-std-Y, standard deviation value of the frequency body gyroscope signal for Y_axis
* FrequencyBodyGyroscope-std-Z, standard deviation value of the frequency body gyroscope signal for Z_axis
* FrequencyBodyGyroscope-meanFrequency-X, mean frequency value of the body gyroscope signal for X_axis
* FrequencyBodyGyroscope-meanFrequency-Y, mean frequency value of the body gyroscope signal for Y_axis
* FrequencyBodyGyroscope-meanFrequency-Z, mean frequency value of the body gyroscope signal for Z_axis
* FrequencyBodyAccelerometerMagnitude-mean,  mean value of the norm for the frequency body acceleration
* FrequencyBodyAccelerometerMagnitude-std, standard deviation value of the norm for the frequency body acceleration
* FrequencyBodyAccelerometerMagnitude-meanFrequency, mean frequency value of the norm for the body acceleration 
* FrequencyBodyBodyAccelerometerJerkMagnitude-mean, mean value of the norm for the frequency body acceleration with Jerk signal
* FrequencyBodyBodyAccelerometerJerkMagnitude-std, standard deviation value of the norm for the frequency body acceleration with Jerk signal
* FrequencyBodyBodyAccelerometerJerkMagnitude-meanFrequency, mean frequency value of the norm for the body acceleration  and Jerk signal
* FrequencyBodyBodyGyroscopeMagnitude-mean, mean value of the norm for the body gyroscope signal 
* FrequencyBodyBodyGyroscopeMagnitude-std, standard deviation value of the norm for the body gyroscope signal 
* FrequencyBodyBodyGyroscopeMagnitude-meanFrequency,  mean frequency of the norm for the body gyroscope signal
* FrequencyBodyBodyGyroscopeJerkMagnitude-mean, mean value of the norm for the body gyroscope signal and Jerk signal
* FrequencyBodyBodyGyroscopeJerkMagnitude-std, standard deviation value of the norm for the body gyroscope signal and Jerk signal
* FrequencyBodyBodyGyroscopeJerkMagnitude-meanFrequency, mean frequency of the norm for the body gyroscope signal and Jerk signal