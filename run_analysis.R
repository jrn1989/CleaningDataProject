# Coded by Jose Robles

# We load the library plry
library("plyr")

# The variable dir should store the path where this script is located
# in order to properly set up the working directory 
dir = "~/Documents/DataScienceSpecialization/3-CleaningData/project/CleaningDataProject"
setwd(dir)

# We load the names of the variables (or features) 
features <- read.table("UCI HAR Dataset/features.txt", quote="\"")

# First we put together the "Train Set"

# We load the measures and put the corresponding names in each column 
X_train <- read.table("UCI HAR Dataset/train/X_train.txt", quote="\"")
names(X_train) <- features$V2

# We load the subjects with a column named "subject"
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", quote="\"")
names(subject_train) <- "subject"

# We load activities with a column named "activity"
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", quote="\"")
names(y_train) <- "activity"

# We merge this 3 sets 
data_train <- cbind(subject_train, X_train, y_train)

# We do the same for the "Test Set"

X_test <- read.table("UCI HAR Dataset/test/X_test.txt", quote="\"")
names(X_test) <- features$V2

subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", quote="\"")
names(subject_test) <- "subject"

y_test <- read.table("UCI HAR Dataset/test/y_test.txt", quote="\"")
names(y_test) <- "activity"

data_test <- cbind(subject_test, X_test, y_test)

# We put together the train set and the test set 
data <- rbind(data_train, data_test)

# We extract only those columns with a mean or standard deviation measures
# The grep function uses a regular expression 
data <- data[,c("subject",grep("mean\\(\\)|meanFreq\\(\\)|std\\(\\)", names(data), perl=TRUE, value=TRUE),"activity")]

# We load the labels for the activities a proper name for the columns
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", quote="\"")
names(activity_labels) <- c("activity", "activityLabel")

# We join the dataframes data and activity_labels by the activity number
data <- join(data, activity_labels, by = "activity")

# We change the name of the variables to have more descriptive names for the columns
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

# We change the subject column to be a factor (instead of numeric)
data$subject <- as.factor(data$subject)

# We use the function aggregate to have the mean for each variable, subject and activity
data2<-aggregate(data[,2:(length(data)-2)], by=list(data$subject,data$activityLabel), FUN=mean)

# We set up a proper name for the columns
currentNames <- names(data2)
currentNames[1] <- "subject"
currentNames[2] <- "activityLabel"
names(data2) <- currentNames

# The output is the two dataframes data and data2
write.table(data,file="firstDataset.txt",row.names=FALSE)
write.table(data2,file="secondDataset.txt",row.names=FALSE)
