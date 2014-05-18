# Human activity recognition: average of measurments involving the mean and standard deviation of the original inertial signals.
---
### Code book

*subject*: identifies each participant in the experiment.

*group*: identifies each participant as being in the training or testing group.

*activity*: identifies the activity being performed by the participant.

The other 79 variables are the averages of the mesaurements involving the mean and standard deviation for the original inertial signals. A complete list is given in the text file 'avg_of_mean_and_std_feature_list.txt'.

The instruction list for transforming the raw data sets into the processed, tidy data set is given in the script 'run_analysis.R'. The script includes R code and comments for reporducing the processed data set.

### Study design

The following is excerpted from 'README.txt' contained in the UCI HAR dataset, which can be found at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

### Variables in the UCI HAR dataset

Information about the variables in the UCI HAR dataset can be found in the text file 'features_info.txt'. The complete list of variable is contained in the text file 'feature.txt'. Both can be found at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
