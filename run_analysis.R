# Coded by Jose Robles

library("plyr")
dir = "~/Documents/DataScienceSpecialization/3-CleaningData/project/CleaningDataProject"
setwd(dir)

features <- read.table("UCI HAR Dataset/features.txt", quote="\"")

#gsub("\\(\\)", "", features$V2)

# Train set

X_train <- read.table("UCI HAR Dataset/train/X_train.txt", quote="\"")
names(X_train) <- features$V2

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", quote="\"")
names(subject_train) <- "subject"

y_train <- read.table("UCI HAR Dataset/train/y_train.txt", quote="\"")
names(y_train) <- "activity"



data_train <- cbind(subject_train, X_train, y_train)

# Test set

X_test <- read.table("UCI HAR Dataset/test/X_test.txt", quote="\"")
names(X_test) <- features$V2

subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", quote="\"")
names(subject_test) <- "subject"

y_test <- read.table("UCI HAR Dataset/test/y_test.txt", quote="\"")
names(y_test) <- "activity"

data_test <- cbind(subject_test, X_test, y_test)

data <- rbind(data_train, data_test)

data <- data[,c("subject",grep("mean\\(\\)|meanFreq\\(\\)|std\\(\\)", names(data), perl=TRUE, value=TRUE),"activity")]

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", quote="\"")
names(activity_labels) <- c("activity", "activityLabel")

data <- join(data, activity_labels, by = "activity")

currentNames <- names(data)

currentNames <- gsub("mean\\(\\)", "mean", currentNames)
currentNames <- gsub("std\\(\\)", "std", currentNames)
currentNames <- gsub("meanFreq\\(\\)", "meanFrequency", currentNames)
currentNames <- gsub("^t", "Time", currentNames)
currentNames <- gsub("^f", "Frequency", currentNames)
currentNames <- gsub("Acc", "Accelerometer", currentNames)
currentNames <- gsub("Gyro", "Gyroscope", currentNames)
currentNames <- gsub("Mag", "Magnitude", currentNames)

names(data) <- currentNames

data$subject <- as.factor(data$subject)

data2<-aggregate(data[,2:(length(data)-2)], by=list(data$subject,data$activityLabel), FUN=mean)

#data2<-aggregate(data[,2:3], by=list(data$subject,data$activityLabel), FUN=mean)
currentNames <- names(data2)
currentNames[1] <- "subject"
currentNames[2] <- "activityLabel"
names(data2) <- currentNames

write.table(data,file="firstDataset.txt",row.names=FALSE)
write.table(data2,file="secondDataset.txt",row.names=FALSE)