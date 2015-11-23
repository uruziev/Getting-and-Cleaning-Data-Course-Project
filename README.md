# Getting-and-Cleaning-Data-Course-Project
Project Assignment
Introduction
This repository contains the R script to get and clean data collected from the accelerometers from the Samsung Galaxy S smart-phone. 
A full description is available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+SmartphonesInitial data available at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Dataset describes the experiments which have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% the test data. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smart-phone on the waist.

CodeBook
The CodeBook contains:
•	A description of each of the variables, including units
•	Information about the summary choices
•	Information about the experimental study design

run_analysis.R
Steps to run the script:
1.	Download the HAR dataset
2.	Unzip the dataset
3.	Ensure that the unzipped directory 'UCI HAR Dataset' is in your working directory, along with run_analysis.R
4.	Execute run_analysis.R. It is known to work with R version 3.2.2
Assignment criteria
To meet the assignment critera, run_analysis.R does the following (quoting from the assignment):
1.	Merges the training and the test sets to create one data set.
2.	Extracts only the measurements on the mean and standard deviation for each measurement.
3.	Uses descriptive activity names to name the activities in the data set
4.	Appropriately labels the data set with descriptive variable names.
5.	Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
These steps are also noted in the comments in the script.
Tidy data set
Running the script in the same directory with the raw data will output a tidy data set. It is tidy, and adheres to the four principles outlined at: https://github.com/jtleek/datasharing#the-tidy-data-set
•	Each measured variable is in one column
•	Each observation is in a different row
•	There is one table for each kind of variable (in this case, there is only one kind)
The file created, summary.txt, is tab-delimited with an initial row containing variable names.

