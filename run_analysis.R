## Coursera Data Science: Getting and Cleaning Data Course Project
## Language: R x64 3.2.2
## Operating System: MS Windows 10

## Task: Create R-script called run_analysis.R thta does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names.
## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Istall the following required packages from R-library:

library(plyr)
library(dplyr)
library(reshape2)

# Check availability of data files in working directory:
if(file.exists("./UCI HAR Dataset")) {
  print("UCI HAR data files are available.")
} else {
# Download data files:
  print("Downloading data files. Please wait...")
  url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
  download.file(url, "data.zip", method = "curl", quiet = TRUE)
  unzip("data.zip")
#Remove unneccesary zip.file:
  file.remove("data.zip")
}

# Read subject, activity and data files:
print("Reading files...")
train_data <- read.table("UCI HAR Dataset/train/X_train.txt")
train_activity <- readLines("UCI HAR Dataset/train/y_train.txt")
train_subjects <- readLines("UCI HAR Dataset/train/subject_train.txt")
test_data <- read.table("UCI HAR Dataset/test/X_test.txt")
test_activity <- readLines("UCI HAR Dataset/test/y_test.txt")
test_subjects <- readLines("UCI HAR Dataset/test/subject_test.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")

# Merge training and test data sets:
print("Merging training and test data sets...")
x <- rbind(train_data, test_data)
activity <- c(train_activity, test_activity)
subject <- c(train_subjects, test_subjects)

# Rename variables:
names(x) <- make.names(features[,2], unique = TRUE)

# Combine files with mean and standard deviation:
y <- select(x, contains(".mean."), contains("std")) 
data <- cbind(subject, activity, y)

# Create descriptive activity names using labels shipped with dataset.
levels(data$activity) <- activity_labels[, 2]

# Clean up data sorting by column names:
names(data) <- sub("\\.{3}", ".", names(data))
names(data) <- sub("\\.{2}", "", names(data))

# Create a tidy data set:
print("Calculating average of each variable for each activity and subject...")
data %>% melt(id.vars = c("subject", "activity")) %>% 
  ddply(.(subject, activity, variable), summarize, mean = mean(value)) %>%
  dcast(subject + activity ~ variable, value.var = "mean") %>%
  write.table(file = "summary.txt", row.names = FALSE)
print("Summary data file created as summary.txt")