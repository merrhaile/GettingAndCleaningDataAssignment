



Data Set Information:
=====================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals TimeAccelerometer-XYZ and TimeGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAccelerometer-XYZ and TimeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccelerometerJerk-XYZ and TimeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccelerometerMagnitude, TimeGravityAccelerationMagnitude, TimeBodyAccelerometerJerkMagnitude, TimeBodyGyroscopeMaggnitude, TimeBodyGyroscopeJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyBodyAccelerometer-XYZ, FrequencyBodyAccelerometerJerk-XYZ, FrequencyBodyGyroscope-XYZ, FrequencyBodyAccelerometerJerkMag, FrequencyBodyGyroscopeMagnitude, FrequencyBodyGyroscopeJerkMagnitude. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

TimeBodyAccelerometer-XYZ
TimeGravityAccelerometer-XYZ
TimeBodyAccelerometerJerk-XYZ
TimeBodyGyroscope-XYZ
TimeBodyGyroscopeJerk-XYZ
TimeBodyAccelerometerMagnitude
TimeGravityAccelerometerMagnitude
TimeBodyAccelerometerJerkMagnitude
TimeBodyGyroscopeMagnitude
TimeBodyGyroscopeJerkMagnitude
FrequencyBodyAccelerometer-XYZ
FrequencyBodyAccelerometerJerk-XYZ
FrequencyBodyGyroscope-XYZ
FrequencyBodyAccelerometerMagnitude
FrequencyBodyAccelerometerJerkMagnitude
FrequencyBodyGyroscopeMagnitude
FrequencyBodyGyroscopeJerkMagnitude

The set of variables that were estimated from these signals are: 

_mean_: Mean value
_std_: Standard deviation
_mad_: Median absolute deviation 
_max_: Largest value in array
_min_: Smallest value in array
_sma_: Signal magnitude area
_energy_: Energy measure. Sum of the squares divided by the number of values. 
_iqr_: Interquartile range 
_entropy_: Signal entropy
_arCoeff_: Autorregresion coefficients with Burg order equal to 4
_correlation_: correlation coefficient between two signals
_maxInds_: index of the frequency component with largest magnitude
_meanFreq_: Weighted average of the frequency components to obtain a mean frequency
_skewness_: skewness of the frequency domain signal 
_kurtosis_: kurtosis of the frequency domain signal 
_bandsEnergy_: Energy of a frequency interval within the 64 bins of the FFT of each window.
_angle_: Angle between to vectors.


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
TimeBodyAccelerometerMean
TimeBodyAccelerometerJerkMean
TimeBodyGyroscopeMean
TimeBodyGyroscopeJerkMean
