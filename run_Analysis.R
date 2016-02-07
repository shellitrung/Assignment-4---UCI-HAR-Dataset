#Human Activity Recognition Using Smartphones Data Set.

#Load package and library

library(plyr)

#Import all .txt files

activity <- read.table("activity_labels.txt")
features <- read.table("features.txt")
subject_test <- read.table("test/subject_test.txt")
x_test <- read.table("test/x_test.txt")
y_test <- read.table("test/y_test.txt")
subject_train <- read.table ("train/subject_train.txt")
x_train <- read.table("train/x_train.txt")
y_train <- read.table("train/y_train.txt")

#Merging the training and the test sets to create a new data sets.

x <- rbind(x_test, x_train)
y <- rbind(y_test, y_train)
subject <- rbind(subject_test, subject_train)

#Extracts only the measurements on the mean and standard deviation for each measurement.

mean_std_features <- grep("-(mean|std)\\(\\)", features[, 2])

#Creates subset with new mean and standard deviation
x <- x[,mean_std_features]

#Uses descriptive activity names to name the activities in the data set

y[, 1] <- activity[y[, 1], 2]

#Correct all column names

names(x) <- features[mean_std_features, 2]
names(y) <- "activity"
names(subject) <- "subject"

#Combine all data into one table

all_data <- cbind(x, y, subject)

#Creates a second, independent tidy data set with the average 
#of each variable for each activity and each subject.

average_set <- ddply(all_data, .(subject, activity), function(x) colMeans(x[, 1:66]))

write.table(average_set, "average_set.txt", row.name=FALSE)
