

#############################################################################################
##  1.  Merge the training and the test sets to create one data set.
#############################################################################################
cat("Merging the training and the test sets\n")

## Read the training data
trainingData <- read.table("./UCI HAR Dataset/train/X_train.txt")

## Read the training data labels
trainingLabels <- read.table("./UCI HAR Dataset/train/y_train.txt")

## Read the training subject data
subjectTrainingData <- read.table("./UCI HAR Dataset/train/subject_train.txt")

## Read the test data
testData <- read.table("./UCI HAR Dataset/test/X_test.txt")

## Read the test data labels
testLabels <- read.table("./UCI HAR Dataset/test/y_test.txt")

##  Read the test subject data
subjectTestData <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Merge the training and test data sets to create a single data set
mergedData <- rbind(trainingData, testData)

# Merge the training and test Labels
mergedLabels <- rbind(trainingLabels, testLabels)

# Merge the training and test subject data
mergedSubjectData <- rbind(subjectTrainingData, subjectTestData)

#############################################################################################
##  2.  Extract only the measurements on the mean and standard deviation for each 
##      measurement. 
#############################################################################################
cat("Extracting measurements\n")

rawFeatures <- read.table("./UCI HAR Dataset/features.txt")

# Extract only the columns with mean or std in their names
features <- grep("-(mean|std)\\(\\)", rawFeatures[, 2])

# Keep only the desired columns
mergedData <- mergedData[, features]

# Update the column labels
names(mergedData) <- rawFeatures[features, 2]

#############################################################################################
##  3.  Use descriptive activity names to name the activities in the data set.
#############################################################################################
cat("Updating activities with descriptive names\n")

activities <- read.table("./UCI HAR Dataset/activity_labels.txt")

# Associate the values with corresponding activity names
mergedLabels[, 1] <- activities[mergedLabels[, 1], 2]

# Update column name
names(mergedLabels) <- "activity"

#############################################################################################
##  4.  Appropriately label the data set with descriptive variable names. 
#############################################################################################
cat("Labeling the data\n")

# Update the column name
names(mergedSubjectData) <- "subject"

# Merge all of the data into a single data set
intermediateDataSet <- cbind(mergedData, mergedLabels, mergedSubjectData)

#############################################################################################
##  5.  From the data set in step 4, creates a second, independent tidy data set with 
##      the average of each variable for each activity and each subject.
#############################################################################################
cat("Creating tidy data set\n")

library(plyr)

# Average each variable for each activity and each subject, but remove the subject and 
# activity column, since the  mean of those are invalid
tidyDataSet <- ddply(intermediateDataSet, .(subject, activity), function(x) colMeans(x[, 1:66]))

write.table(tidyDataSet, "tidyDataSet.txt", row.name=FALSE)