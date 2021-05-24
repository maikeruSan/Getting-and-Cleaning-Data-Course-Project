### The codebook aims to give a better understanding of the variables for anyone who interests in the data. 

1. The data, imported, transformed, aggregated, and persisted by the script; the outcome contained 68 variables.

2. Each variable of the original dataset is renamed in a descriptive form when the script reads it into memory. The map diagram could describe the structure of the variable name.

![alt text](https://raw.githubusercontent.com/maikeruSan/Getting-and-Cleaning-Data-Course-Project/main/map.png "Map of variable name")


3.  The following table listed and indexed all of the 68 variables and their properties,  which might help the data-users get a whole picture of the data more accessible.

																				
|Variable|SignalDomain|Sensor|BodyOrGravity|Magnitude_A|JerkSignals|Magnitude_B|Estimate|Axial|Remark|
|--------|------------|------|-------------|-----------|-----------|-----------|--------|-----|------|
|	Identifier	|	NA	|	NA	|	NA	|	NA	|	NA	|	NA	|	NA	|	NA	|	Subjetcs(1~30)	|
|	ActivityLabel	|	NA	|	NA	|	NA	|	NA	|	NA	|	NA	|	NA	|	NA	|	Aactivities Lables(1:WALKING,2:WALKING_UPSTAIRS,3:WALKING_DOWNSTAIRS,4:SITTING,5:STANDING,6:LAYING) 	|
|	TimeBodyAceleration_MEAN_X	|	Time	|	Accelerometer	|	Body	|	NA	|	NA	|	NA	|	Mean	|	X	|	NA	|
|	TimeBodyAceleration_MEAN_Y	|	Time	|	Accelerometer	|	Body	|	NA	|	NA	|	NA	|	Mean	|	Y	|	NA	|
|	TimeBodyAceleration_MEAN_Z	|	Time	|	Accelerometer	|	Body	|	NA	|	NA	|	NA	|	Mean	|	Z	|	NA	|
|	TimeGravityAceleration_MEAN_X	|	Time	|	Accelerometer	|	Gravity	|	NA	|	NA	|	NA	|	Mean	|	X	|	NA	|
|	TimeGravityAceleration_MEAN_Y	|	Time	|	Accelerometer	|	Gravity	|	NA	|	NA	|	NA	|	Mean	|	Y	|	NA	|
|	TimeGravityAceleration_MEAN_Z	|	Time	|	Accelerometer	|	Gravity	|	NA	|	NA	|	NA	|	Mean	|	Z	|	NA	|
|	TimeBodyAcelerationJerk_MEAN_X	|	Time	|	Accelerometer	|	Body	|	NA	|	TRUE	|	NA	|	Mean	|	X	|	NA	|
|	TimeBodyAcelerationJerk_MEAN_Y	|	Time	|	Accelerometer	|	Body	|	NA	|	TRUE	|	NA	|	Mean	|	Y	|	NA	|
|	TimeBodyAcelerationJerk_MEAN_Z	|	Time	|	Accelerometer	|	Body	|	NA	|	TRUE	|	NA	|	Mean	|	Z	|	NA	|
|	TimeBodyGyroscope_MEAN_X	|	Time	|	Gyroscope	|	NA	|	NA	|	NA	|	NA	|	Mean	|	X	|	NA	|
|	TimeBodyGyroscope_MEAN_Y	|	Time	|	Gyroscope	|	NA	|	NA	|	NA	|	NA	|	Mean	|	Y	|	NA	|
|	TimeBodyGyroscope_MEAN_Z	|	Time	|	Gyroscope	|	NA	|	NA	|	NA	|	NA	|	Mean	|	Z	|	NA	|
|	TimeBodyGyroscopeJerk_MEAN_X	|	Time	|	Gyroscope	|	NA	|	NA	|	TRUE	|	NA	|	Mean	|	X	|	NA	|
|	TimeBodyGyroscopeJerk_MEAN_Y	|	Time	|	Gyroscope	|	NA	|	NA	|	TRUE	|	NA	|	Mean	|	Y	|	NA	|
|	TimeBodyGyroscopeJerk_MEAN_Z	|	Time	|	Gyroscope	|	NA	|	NA	|	TRUE	|	NA	|	Mean	|	Z	|	NA	|
|	TimeBodyAcelerationMagnitude_MEAN	|	Time	|	Accelerometer	|	Body	|	TRUE	|	NA	|	NA	|	Mean	|	NA	|	NA	|
|	TimeGravityAcelerationMagnitude_MEAN	|	Time	|	Accelerometer	|	Gravity	|	TRUE	|	NA	|	NA	|	Mean	|	NA	|	NA	|
|	TimeBodyAcelerationJerkMagnitude_MEAN	|	Time	|	Accelerometer	|	Body	|	NA	|	TRUE	|	TRUE	|	Mean	|	NA	|	NA	|
|	TimeBodyGyroscopeMagnitude_MEAN	|	Time	|	Gyroscope	|	NA	|	TRUE	|	NA	|	NA	|	Mean	|	NA	|	NA	|
|	TimeBodyGyroscopeJerkMagnitude_MEAN	|	Time	|	Gyroscope	|	NA	|	NA	|	TRUE	|	TRUE	|	Mean	|	NA	|	NA	|
|	FrequencyBodyAceleration_MEAN_X	|	Frequency	|	Accelerometer	|	Body	|	NA	|	NA	|	NA	|	Mean	|	X	|	NA	|
|	FrequencyBodyAceleration_MEAN_Y	|	Frequency	|	Accelerometer	|	Body	|	NA	|	NA	|	NA	|	Mean	|	Y	|	NA	|
|	FrequencyBodyAceleration_MEAN_Z	|	Frequency	|	Accelerometer	|	Body	|	NA	|	NA	|	NA	|	Mean	|	Z	|	NA	|
|	FrequencyBodyAcelerationJerk_MEAN_X	|	Frequency	|	Accelerometer	|	Body	|	NA	|	TRUE	|	NA	|	Mean	|	X	|	NA	|
|	FrequencyBodyAcelerationJerk_MEAN_Y	|	Frequency	|	Accelerometer	|	Body	|	NA	|	TRUE	|	NA	|	Mean	|	Y	|	NA	|
|	FrequencyBodyAcelerationJerk_MEAN_Z	|	Frequency	|	Accelerometer	|	Body	|	NA	|	TRUE	|	NA	|	Mean	|	Z	|	NA	|
|	FrequencyBodyGyroscope_MEAN_X	|	Frequency	|	Gyroscope	|	NA	|	NA	|	NA	|	NA	|	Mean	|	X	|	NA	|
|	FrequencyBodyGyroscope_MEAN_Y	|	Frequency	|	Gyroscope	|	NA	|	NA	|	NA	|	NA	|	Mean	|	Y	|	NA	|
|	FrequencyBodyGyroscope_MEAN_Z	|	Frequency	|	Gyroscope	|	NA	|	NA	|	NA	|	NA	|	Mean	|	Z	|	NA	|
|	FrequencyBodyAcelerationMagnitude_MEAN	|	Frequency	|	Accelerometer	|	Body	|	TRUE	|	NA	|	NA	|	Mean	|	NA	|	NA	|
|	FrequencyBodyAcelerationJerkMagnitude_MEAN	|	Frequency	|	Accelerometer	|	Body	|	NA	|	TRUE	|	TRUE	|	Mean	|	NA	|	NA	|
|	FrequencyBodyGyroscopeMagnitude_MEAN	|	Frequency	|	Gyroscope	|	NA	|	TRUE	|	NA	|	NA	|	Mean	|	NA	|	NA	|
|	FrequencyBodyGyroscopeJerkMagnitude_MEAN	|	Frequency	|	Gyroscope	|	NA	|	NA	|	TRUE	|	TRUE	|	Mean	|	NA	|	NA	|
|	TimeBodyAceleration_STD_X	|	Time	|	Accelerometer	|	Body	|	NA	|	NA	|	NA	|	Standard Deviation	|	X	|	NA	|
|	TimeBodyAceleration_STD_Y	|	Time	|	Accelerometer	|	Body	|	NA	|	NA	|	NA	|	Standard Deviation	|	Y	|	NA	|
|	TimeBodyAceleration_STD_Z	|	Time	|	Accelerometer	|	Body	|	NA	|	NA	|	NA	|	Standard Deviation	|	Z	|	NA	|
|	TimeGravityAceleration_STD_X	|	Time	|	Accelerometer	|	Gravity	|	NA	|	NA	|	NA	|	Standard Deviation	|	X	|	NA	|
|	TimeGravityAceleration_STD_Y	|	Time	|	Accelerometer	|	Gravity	|	NA	|	NA	|	NA	|	Standard Deviation	|	Y	|	NA	|
|	TimeGravityAceleration_STD_Z	|	Time	|	Accelerometer	|	Gravity	|	NA	|	NA	|	NA	|	Standard Deviation	|	Z	|	NA	|
|	TimeBodyAcelerationJerk_STD_X	|	Time	|	Accelerometer	|	Body	|	NA	|	TRUE	|	NA	|	Standard Deviation	|	X	|	NA	|
|	TimeBodyAcelerationJerk_STD_Y	|	Time	|	Accelerometer	|	Body	|	NA	|	TRUE	|	NA	|	Standard Deviation	|	Y	|	NA	|
|	TimeBodyAcelerationJerk_STD_Z	|	Time	|	Accelerometer	|	Body	|	NA	|	TRUE	|	NA	|	Standard Deviation	|	Z	|	NA	|
|	TimeBodyGyroscope_STD_X	|	Time	|	Gyroscope	|	NA	|	NA	|	NA	|	NA	|	Standard Deviation	|	X	|	NA	|
|	TimeBodyGyroscope_STD_Y	|	Time	|	Gyroscope	|	NA	|	NA	|	NA	|	NA	|	Standard Deviation	|	Y	|	NA	|
|	TimeBodyGyroscope_STD_Z	|	Time	|	Gyroscope	|	NA	|	NA	|	NA	|	NA	|	Standard Deviation	|	Z	|	NA	|
|	TimeBodyGyroscopeJerk_STD_X	|	Time	|	Gyroscope	|	NA	|	NA	|	TRUE	|	NA	|	Standard Deviation	|	X	|	NA	|
|	TimeBodyGyroscopeJerk_STD_Y	|	Time	|	Gyroscope	|	NA	|	NA	|	TRUE	|	NA	|	Standard Deviation	|	Y	|	NA	|
|	TimeBodyGyroscopeJerk_STD_Z	|	Time	|	Gyroscope	|	NA	|	NA	|	TRUE	|	NA	|	Standard Deviation	|	Z	|	NA	|
|	TimeBodyAcelerationMagnitude_STD	|	Time	|	Accelerometer	|	Body	|	TRUE	|	NA	|	NA	|	Standard Deviation	|	NA	|	NA	|
|	TimeGravityAcelerationMagnitude_STD	|	Time	|	Accelerometer	|	Gravity	|	TRUE	|	NA	|	NA	|	Standard Deviation	|	NA	|	NA	|
|	TimeBodyAcelerationJerkMagnitude_STD	|	Time	|	Accelerometer	|	Body	|	NA	|	TRUE	|	TRUE	|	Standard Deviation	|	NA	|	NA	|
|	TimeBodyGyroscopeMagnitude_STD	|	Time	|	Gyroscope	|	NA	|	TRUE	|	NA	|	NA	|	Standard Deviation	|	NA	|	NA	|
|	TimeBodyGyroscopeJerkMagnitude_STD	|	Time	|	Gyroscope	|	NA	|	NA	|	TRUE	|	TRUE	|	Standard Deviation	|	NA	|	NA	|
|	FrequencyBodyAceleration_STD_X	|	Frequency	|	Accelerometer	|	Body	|	NA	|	NA	|	NA	|	Standard Deviation	|	X	|	NA	|
|	FrequencyBodyAceleration_STD_Y	|	Frequency	|	Accelerometer	|	Body	|	NA	|	NA	|	NA	|	Standard Deviation	|	Y	|	NA	|
|	FrequencyBodyAceleration_STD_Z	|	Frequency	|	Accelerometer	|	Body	|	NA	|	NA	|	NA	|	Standard Deviation	|	Z	|	NA	|
|	FrequencyBodyAcelerationJerk_STD_X	|	Frequency	|	Accelerometer	|	Body	|	NA	|	TRUE	|	NA	|	Standard Deviation	|	X	|	NA	|
|	FrequencyBodyAcelerationJerk_STD_Y	|	Frequency	|	Accelerometer	|	Body	|	NA	|	TRUE	|	NA	|	Standard Deviation	|	Y	|	NA	|
|	FrequencyBodyAcelerationJerk_STD_Z	|	Frequency	|	Accelerometer	|	Body	|	NA	|	TRUE	|	NA	|	Standard Deviation	|	Z	|	NA	|
|	FrequencyBodyGyroscope_STD_X	|	Frequency	|	Gyroscope	|	NA	|	NA	|	NA	|	NA	|	Standard Deviation	|	X	|	NA	|
|	FrequencyBodyGyroscope_STD_Y	|	Frequency	|	Gyroscope	|	NA	|	NA	|	NA	|	NA	|	Standard Deviation	|	Y	|	NA	|
|	FrequencyBodyGyroscope_STD_Z	|	Frequency	|	Gyroscope	|	NA	|	NA	|	NA	|	NA	|	Standard Deviation	|	Z	|	NA	|
|	FrequencyBodyAcelerationMagnitude_STD	|	Frequency	|	Accelerometer	|	Body	|	TRUE	|	NA	|	NA	|	Standard Deviation	|	NA	|	NA	|
|	FrequencyBodyAcelerationJerkMagnitude_STD	|	Frequency	|	Accelerometer	|	Body	|	NA	|	TRUE	|	TRUE	|	Standard Deviation	|	NA	|	NA	|
|	FrequencyBodyGyroscopeMagnitude_STD	|	Frequency	|	Gyroscope	|	NA	|	TRUE	|	NA	|	NA	|	Standard Deviation	|	NA	|	NA	|
|	FrequencyBodyGyroscopeJerkMagnitude_STD	|	Frequency	|	Gyroscope	|	NA	|	NA	|	TRUE	|	TRUE	|	Standard Deviation	|	NA	|	NA	|
