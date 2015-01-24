## CodeBook for the tidy dataset

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

### Feature Selection 
Refer to the README and features_info.txt files in the original dataset for a description of the fetures selection used in the origional data set.

### Data transformations
The 'run_analysis.R' script performs the following transformations on the origional data set to form the tidy data set.
 
* Merge the training and the test sets to create one data set.

Initially, all of the files are read.  Then, the Training Data is merged with the Test Data, the Training Lables are merged with the Test labels, and the Training Subjects are merged with the Test Subjects.

* Extracts only the measurements on the mean and standard deviation for each measurement. 

Only the columns with mean or std in their names are maintaintained in the merged data.

* Use descriptive activity names to name the activities in the data set.

In this section of the script, the merged values are associated with corresponding activity names.

* Appropriately labels the data set with descriptive activity names. 

The column name names are updated and all of the data is merged into a single data set.

* Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

The average for each variable, activity, and subject is computed and stored in the 'tidayDataSet.txt' file.

### Tidy Data Set File Format
The following describes the format of the 'tidayDataSet.txt'.  The file contains 68 columns described below.

* Column 1 contains a numeric value assigend to each subject.

* Column 2 contains the activities each person performed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, or LAYING)

* Note:  The remainder (columns 3 throug 68) of the file contain the features wich are normalized and bounded within [-1,1].  The mean values are appended with mean() and the standard deviation values are appended with std().

* Columns 3 through 32 contain the following feature in the following order.  

tBodyAcc-mean()-X

tBodyAcc-mean()-Y

tBodyAcc-mean()-Z

tBodyAcc-std()-X

tBodyAcc-std()-Y

tBodyAcc-std()-Z

tGravityAcc-mean()-X

tGravityAcc-mean()-Y

tGravityAcc-mean()-Z

tGravityAcc-std()-X

tGravityAcc-std()-Y

tGravityAcc-std()-Z

tBodyAccJerk-mean()-X

tBodyAccJerk-mean()-Y

tBodyAccJerk-mean()-Z

tBodyAccJerk-std()-X

tBodyAccJerk-std()-Y

tBodyAccJerk-std()-Z

tBodyGyro-mean()-X

tBodyGyro-mean()-Y

tBodyGyro-mean()-Z

tBodyGyro-std()-X

tBodyGyro-std()-Y

tBodyGyro-std()-Z

tBodyGyroJerk-mean()-X

tBodyGyroJerk-mean()-Y

tBodyGyroJerk-mean()-Z

tBodyGyroJerk-std()-X

tBodyGyroJerk-std()-Y

tBodyGyroJerk-std()-Z

* Columns 33 through 42 contain the following feature in the following order.  

tBodyAccMag-mean()

tBodyAccMag-std()

tGravityAccMag-mean()

tGravityAccMag-std()

tBodyAccJerkMag-mean()

tBodyAccJerkMag-std()

tBodyGyroMag-mean()

tBodyGyroMag-std()

tBodyGyroJerkMag-mean()

tBodyGyroJerkMag-std()

* Columns 43 through 60 contain the following feature in the following order.  

fBodyAcc-mean()-X

fBodyAcc-mean()-Y

fBodyAcc-mean()-Z

fBodyAcc-std()-X

fBodyAcc-std()-Y

fBodyAcc-std()-Z

fBodyAccJerk-mean()-X

fBodyAccJerk-mean()-Y

fBodyAccJerk-mean()-Z

fBodyAccJerk-std()-X

fBodyAccJerk-std()-Y

fBodyAccJerk-std()-Z

fBodyGyro-mean()-X

fBodyGyro-mean()-Y

fBodyGyro-mean()-Z

fBodyGyro-std()-X

fBodyGyro-std()-Y

fBodyGyro-std()-Z

* Columns 61 through 68 contain the following feature in the following order.  

fBodyAccMag-mean()

fBodyAccMag-std()

fBodyAccJerkMag-mean()

fBodyAccJerkMag-std()

fBodyGyroMag-mean()

fBodyGyroMag-std()

fBodyGyroJerkMag-mean()

fBodyGyroJerkMag-std()

