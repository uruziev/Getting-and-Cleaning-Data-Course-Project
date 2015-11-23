Code Book

This code book includes information about the source data, the transformations performed after collecting the data and some information about the variables of the resulting data sets.
Study Design

The source data was collected from the UCI Machine Learning Repository to complete an assignment for a Coursera course named Getting and Cleaning Data instructed by Jeff Leek. The assignment involved working with the data set and producing tidy data representation of the source data. Below is a list of the operations done to achieve the outputs.

1.	Downloaded the data set
2.	Unzipped the data set into working directory
3.	Loaded test and training data sets into data frames
4.	Loaded source variable names for test and training data sets
5.	Loaded activity labels
6.	Combined test and training data frames using rbind
7.	Merged the data frames to only include the mean and standard deviation variables
8.	Replaced activity IDs with the activity labels for readability
9.	Combined the data frames to produce one data frame containing the subjects, measurements and activities
10.	Produced "summary.txt" with the combined data frame as the first expected output

Variables

Files in folder ‘UCI HAR Dataset’ that will be used are:

1.	SUBJECT FILES

•	test/subject_test.txt
•	train/subject_train.txt

2.	ACTIVITY FILES

•	test/X_test.txt
•	train/X_train.txt

3.	DATA FILES

•	test/y_test.txt
•	train/y_train.txt

4.	features.txt - Names of column variables in the dataTable

5.	activity_labels.txt - Links the class labels with their activity name.

Codes:
"tBodyAcc.mean.X", "tBodyAcc.mean.Y", "tBodyAcc.mean.Z", "tBodyAcc.std.X", "tBodyAcc.std.Y", "tBodyAcc.std.Z" Mean (and standard deviation) body acceleration in time in X, Y and Z directions.
"tGravityAcc.mean.X", "tGravityAcc.mean.Y", "tGravityAcc.mean.Z", "tGravityAcc.std.X", "tGravityAcc.std.Y", "tGravityAcc.std.Z" Mean (and standard deviation) gravity acceleration in time in X, Y and Z directions.
"tBodyAccJerk.mean.X", "tBodyAccJerk.mean.Y", "tBodyAccJerk.mean.Z", "tBodyAccJerk.std.X", "tBodyAccJerk.std.Y", "tBodyAccJerk.std.Z"
Mean (and standard deviation) body acceleration jerk in time in X, Y and Z directions.
"tBodyGyro.mean.X", "tBodyGyro.mean.Y", "tBodyGyro.mean.Z", "tBodyGyro.std.X", "tBodyGyro.std.Y", "tBodyGyro.std.Z"
Mean (and standard deviation) body angular velocity in time in X, Y and Z directions.
"tBodyGyroJerk.mean.X", "tBodyGyroJerk.mean.Y", "tBodyGyroJerk.mean.Z", "tBodyGyroJerk.std.X", "tBodyGyroJerk.std.Y", "tBodyGyroJerk.std.Z"
Mean (and standard deviation) body angular velocity jerk in time in X, Y and Z directions.
"tBodyAccMag.mean", "tBodyAccMag.std"
Mean (and standard deviation) magnitude of body acceleration in time.
"tGravityAccMag.mean", "tGravityAccMag.std"
Mean (and standard deviation) magnitude of gravity acceleration in time.
"tBodyAccJerkMag.mean", "tBodyAccJerkMag.std"
Mean (and standard deviation) magnitude of body acceleration jerk in time.
"tBodyGyroMag.mean", "tBodyGyroMag.std"
Mean (and standard deviation) magnitude of body angular velocity in time.
"tBodyGyroJerkMag.mean", "tBodyGyroJerkMag.std"
Mean (and standard deviation) magnitude of body angular velocity jerk in time.
"fBodyAcc.mean.X", "fBodyAcc.mean.Y", "fBodyAcc.mean.Z", "fBodyAcc.std.X", "fBodyAcc.std.Y", "fBodyAcc.std.Z"
Mean (and standard deviation) from frequency spectrum of body acceleration in X, Y and Z directions.
"fBodyAccJerk.mean.X", "fBodyAccJerk.mean.Y", "fBodyAccJerk.mean.Z", "fBodyAccJerk.std.X", "fBodyAccJerk.std.Y", "fBodyAccJerk.std.Z"
Mean (and standard deviation) from frequency spectrum of body acceleration jerk in X, Y and Z directions.
"fBodyGyro.mean.X", "fBodyGyro.mean.Y", "fBodyGyro.mean.Z", "fBodyGyro.std.X", "fBodyGyro.std.Y", "fBodyGyro.std.Z"
Mean (and standard deviation) from frequency spectrum of body angular velocity in X, Y and Z directions.
"fBodyAccMag.mean", "fBodyAccMag.std"
Mean (and standard deviation) from frequency spectrum of magnitude of body acceleration in time.
"fBodyAccJerkMag.mean", "fBodyAccJerkMag.std"
Mean (and standard deviation) from frequency spectrum of magnitude of body acceleration jerk in time.
"fBodyGyroMag.mean", "fBodyGyroMag.std"
Mean (and standard deviation) from frequency spectrum of magnitude of body angular velocity in time.
"fBodyGyroJerkMag.mean", "fBodyGyroJerkMag.std"
Mean (and standard deviation) from frequency spectrum of magnitude of angular velocity jerk in time.


