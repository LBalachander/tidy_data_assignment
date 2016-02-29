## Read Supporting Metadata

featureNames <- read.table(".\\data\\features.txt")
activityLabels <- read.table(".\\data\\activity_labels.txt", header = FALSE)


## Read training data
subjectTrain <- read.table(".\\data\\train\\subject_train.txt", header = FALSE)
activityTrain <- read.table(".\\data\\train\\y_train.txt", header = FALSE)
featuresTrain <- read.table(".\\data\\train\\X_train.txt", header = FALSE)


## Read test data
subjectTest <- read.table(".\\data\\test\\subject_test.txt", header = FALSE)
activityTest <- read.table(".\\data\\test\\y_test.txt", header = FALSE)
featuresTest <- read.table(".\\data\\test\\X_test.txt", header = FALSE)

## Part 1 - Merge the training and the test sets to create one data set

subject <- rbind(subjectTrain, subjectTest)
activity <- rbind(activityTrain, activityTest)
features <- rbind(featuresTrain, featuresTest)

## Naming the columns
colnames(features) <- t(featureNames[2])

colnames(activity) <- "Activity"
colnames(subject) <- "Subject"
completeData <- cbind(features,activity,subject)

## Part 2 - Extracts only the measurements on the mean and standard deviation for each measurement

columnsWithMeanSTD <- grep(".*Mean.*|.*Std.*", names(completeData), ignore.case=TRUE)

requiredColumns <- c(columnsWithMeanSTD, 562, 563)
dim(completeData)
extractedData <- completeData[,requiredColumns]
dim(extractedData)


## Part 3 - Uses descriptive activity names to name the activities in the data set

extractedData$Activity <- as.character(extractedData$Activity)
for (i in 1:6){  extractedData$Activity[extractedData$Activity == i] <- as.character(activityLabels[i,2]) }

## Part 4 - Appropriately labels the data set with descriptive variable names


names(extractedData)<-gsub("Acc", "Accelerometer", names(extractedData))
names(extractedData)<-gsub("Gyro", "Gyroscope", names(extractedData))
names(extractedData)<-gsub("BodyBody", "Body", names(extractedData))
names(extractedData)<-gsub("Mag", "Magnitude", names(extractedData))
names(extractedData)<-gsub("^t", "Time", names(extractedData))
names(extractedData)<-gsub("^f", "Frequency", names(extractedData))
names(extractedData)<-gsub("tBody", "TimeBody", names(extractedData))
names(extractedData)<-gsub("-mean()", "Mean", names(extractedData), ignore.case = TRUE)
names(extractedData)<-gsub("-std()", "STD", names(extractedData), ignore.case = TRUE)
names(extractedData)<-gsub("-freq()", "Frequency", names(extractedData), ignore.case = TRUE)
names(extractedData)<-gsub("angle", "Angle", names(extractedData))
names(extractedData)<-gsub("gravity", "Gravity", names(extractedData))

## Part 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

extractedData$Subject <- as.factor(extractedData$Subject)
extractedData <- data.table(extractedData)


tidyData <- aggregate(. ~Subject + Activity, extractedData, mean)
tidyData <- tidyData[order(tidyData$Subject,tidyData$Activity),]
write.table(tidyData, file = "Tidy.txt", row.names = FALSE)