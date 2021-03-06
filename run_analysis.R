fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, "./data/Datasets.zip", mode ="wb")
list.files("./data")

#In this script Downloaded Data should be unzipped (manually) .. The zipped data is available in data directory
 

#Extracting Features
print("[Extracting Features..]")
features <- read.table("data/Datasets/UCI HAR Dataset/features.txt")

#Reading all respective files in Training and Test directory

print("[Importing data from subject_train, X_train and y_train..]")
subject_train <- read.table("data/Datasets/UCI HAR Dataset/train/subject_train.txt",col.names="id")
X_train <- read.table("data/Datasets/UCI HAR Dataset/train/X_train.txt", col.names=features$V2)
y_train <- read.table("data/Datasets/UCI HAR Dataset/train/y_train.txt",col.names="activity")

print("[Importing data from subject_test, X_test and y_test..]")
subject_test <- read.table("data/Datasets/UCI HAR Dataset/test/subject_test.txt",col.names="id")
X_test <- read.table("data/Datasets/UCI HAR Dataset/test/X_test.txt", col.names=features$V2)
y_test <- read.table("data/Datasets/UCI HAR Dataset/test/y_test.txt", col.names="activity")


#Task 1: Merging Test and Training Data
print("[Merging all imported data into common file...]")
TrainData <- cbind(subject_train,y_train,X_train)
TestData <- cbind(subject_test,y_test,X_test)
FullData <- rbind(TrainData,TestData)

#Arrange Data based on ID
FullData <- arrange(FullData, id)

#Task2 :Extracted only with mean and Std Deviation
print("[Extract only std deviation and mean data...]")
TidyDataset1 <- FullData[,c(1,2,grep("std", colnames(FullData)), grep("mean", colnames(FullData)))]

#Task 3: Relabelling activity based on activity label given (ie 1=WALKING, 2=WALKING_UPSTAIRS etc)
activity_labels <- read.table("data/Datasets/UCI HAR Dataset/activity_labels.txt")
data$activity <- factor(data$activity,  labels=activity_labels$V2)

#Task 4 : Write tidy data into file
print("[Writing tidy dataset into file TidyDataset1.txt...]")
write.table(TidyDataset1,"data/Datasets/UCI HAR Dataset/TidyDataset1.txt",row.names = FALSE)

#Task 5: Calculate average based on id and activities
print("[ Writing a new table with average of activity...]")
TidyDataset2 <- ddply(TidyDataset1, .(id, activity), .fun=function(x){ colMeans(x[,-c(1:2)]) })

print("[Writing tidy dataset2 into file TidyDataset2.txt...]")
write.table(TidyDataset2,"data/Datasets/UCI HAR Dataset/TidyDataset2.txt",row.names = FALSE)


