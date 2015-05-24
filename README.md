# Getting-and-Cleaning-Data
Project
This file is to explain the script run_analysis.R .

The script is made up of 5 parts as labeled.
#1
It merges the test(X_test.txt) and the training (X_train.txt) sets to create one table called "dataset".


#2
It first gives names to each column in the "dataset". The names are from the "features.txt".
And then it extracts only the measurements on the mean and standard deviation for each measurement and creates a new table called "Extract".


#3
First, it gets the activity labels from file "y_test.txt" and "y_train.txt"
Then it assigns descriptive activity names to each activity label. The descriptive names are from "activity_labels.txt".
The table "label" includes 2 columns. The first column shows the activity labels, which range from 1 to 6. The second shows the description of the labels in the first columns . 


#4
It gives appropriately labels to "Extract" with descriptive variable names by combine "lable" and "Extract". The new table is called "full". 


#5
It creates an independent data set "tidy" with the average of each variable for each activity and each subject.

