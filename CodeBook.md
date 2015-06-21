
#Variables in run_analysis.R


##fileUrl 
Define the datasource url for download ("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")

##subject_train 
Defined Table to store objects from subject_train.txt

##X_train 
Defined Table to store objects from X_train.txt

##y_train 
Defined Table to store objects from Y_train.txt

##subject_test
Defined Table to store objects from subject_test.txt

##X_test 
Defined Table to store objects from X_test.txt

##y_train 
Defined Table to store objects from Y_test.txt

##TrainData 
Define table that combine subject_train,y_train,X_train

##TestData 
Define table that combine subject_test,y_test,X_test

##FullData 
Full Dataset combining TrainData & TestData

##TidyDataset1
New Dataset Extracting only mean and Std Deviation

##activity_labels: 
Relabelling all activities based on activity label given (ie 1=WALKING, 2=WALKING_UPSTAIRS etc)

##TidyDataset2
New Dataset Extracting average based on activities and ID

#Dataset


#List of Activities
* 1 WALKING
* 2 WALKING_UPSTAIRS
* 3 WALKING_DOWNSTAIRS
* 4 SITTING
* 5 STANDING
* 6 LAYING

