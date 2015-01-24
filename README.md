
## Getting and Cleaning Data: Course Project

### Introduction
This repository contains the submission for the course project for the Coursera course "Getting and Cleaning data".

### Overview
This project serves to demonstrate the collection and cleaning of a tidy data set that can be used for subsequent analysis. A full description of the data used in this project can be found at [The UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### Source Data
[The source data for this project can be found here.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The dataset includes the following files:

* 'README.txt'

* 'features_info.txt': Shows information about the variables used on the feature vector.

* 'features.txt': List of all features.

* 'activity_labels.txt': Links the class labels with their activity name.

* 'train/X_train.txt': Training set.

* 'train/y_train.txt': Training labels.

* 'test/X_test.txt': Test set.

* 'test/y_test.txt': Test labels.

### Project Summary
The following is a summary description of the project instructions

Create one R script called run_analysis.R that does the following. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

### Running the test script

1. The UCI HAR Dataset must be extracted and be availble in a directory called "UCI HAR Dataset" in the 'R Working Directory'.

2. Run the 'run_analysis.R' script in the working directory.

3. The 'run_analysis.R' script will create a tidy data set containing the means of all the columns per test subject and per activity.  This tidy dataset will be written to a tab-delimited file called 'tidyDataSet.txt', which can also be found in this repository.
 
### Code Book
The 'CodeBook.MD' file explains the transformations performed and the resulting data and variables.

