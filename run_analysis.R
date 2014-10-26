##You should create one R script called run_analysis.R that does the following. 
##Merges the training and the test sets to create one data set.

## Merging X Data
xTrain <- read.table("train/X_train.txt")
xTest <- read.table("test/X_test.txt")
xData <- rbind(xTrain, xTest)

## Merging Y Data
yTrain <- read.table("train/Y_train.txt")
yTest <- read.table("test/Y_test.txt")
yData <- rbind(yTrain, yTest)

## Merging Subject Data

subjectTrain <- read.table("train/subject_train.txt")
subjectTest <- read.table("test/subject_test.txt")
subjectData <- rbind(subjectTrain, subjectTest)

## Merging All Data

allData <- cbind(subjectData, yData, xData)

##Extracts only the measurements on the mean and standard deviation for each measurement. 

features <- read.table("features.txt")
featuresClean <- features[grepl("mean|std", features[,2]),]  
featuresList <- featuresClean[,1]
xDataClean <- xData[,featuresList]
allData <- cbind(subjectData, yData, xDataClean)

##Uses descriptive activity names to name the activities in the data set
yData <- replace(yData, yData==1, "Walking")
yData <- replace(yData, yData==2, "WalkingUpstairs")
yData <- replace(yData, yData==3, "WalkingDownstairs")
yData <- replace(yData, yData==4, "Sitting")
yData <- replace(yData, yData==5, "Standing")
yData <- replace(yData, yData==6, "Laying")
allData <- cbind(subjectData, yData, xDataClean)
##Appropriately labels the data set with descriptive variable names. 

colnames(allData) <- c("Subject", "Activity", as.vector(featuresClean[,2]))

##From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

install.packages("dplyr")
library(dplyr)

groupedData <- group_by(allData, Subject, Activity)
resultingData <- summarise_each(groupedData, funs(mean))
write.table(resultingData,"tidyDataSet.txt",row.name=FALSE)