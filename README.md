# Getting-Data-Project

This repository is dedicated to the Coursera Module 3 Project Assignment on Getting Data

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This repository contains :  
* README files,
* CodeBook and 
* run_analysis.R

## Codebook
This file contain the description of all variables

## run_analysis.R
This script was tasked for the following :

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names.
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## How the Script works
The script run_analysis.R can be run from R console without any input parameters.
Briefly script will process raw data based on following sequence :
* Import library plyr
* Create a directory "data" as its workspace
* Automatically Download raw data from the data sources (refer above link)
* (Note that the data was downloaded as .zip files, user needs to manually unzip this file in data directory (maintaining all file path from the zip file (/Datasets/UCI HAR Dataset/)
* The script will transform  identified files into table (subject_test, subject train,X_test, y_test, X_train and y_train) and subsequently merged them into a single dataset
* The script will Extract only with mean and Std Deviation following which, it will relabel activities from respective code to description (such as 1=WALKING etc)
* The first dataset(TidayDataset1) will then be produced
* The second dataset (TidyDataset2) will be created, showing only the average value based on id and activities
* 
