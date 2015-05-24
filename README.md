# Getting-and-Cleaning-Data
Project
This file is to explain the script run_analysis.R .

The script is made up of 5 parts as labeled.
#1
It merges the test(X_test.txt) and the training (X_train.txt) sets to create one table called "dataset".
There are 10299 rows and 561 columns of variables.

#2
It first gives names to each column in the "dataset". The names are from the "features.txt".
And then it extracts only the measurements on the mean and standard deviation for each measurement and creates a new table called "Extract".
There are 10299 rows and 79 columns (means or standard deviatons) in "Extract".

#3
First, it gets the activity labels from file "y_test.txt" and "y_train.txt"
Then it assigns descriptive activity names to each activity label. The descriptive names are from "activity_labels.txt"
The table "label" has two columns, activity_labels and activity_description, respectively.

#4
It gives appropriately labels to "dataset" with descriptive variable names. 

#5
It creates an independent tidy data set with the average of each variable for each activity and each subject.
