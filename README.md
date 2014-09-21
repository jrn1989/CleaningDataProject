CleaningDataProject
===================

By: José Robles

How to use the script
----------------------------

The folder "UCI HAR Dataset" and the script "run_analysis.R" should be stored in the same directory. Before executing the script, it is necessary to have installed the R package *plyr* and set up the variable *dir* (line 8 in the script) with the path where the script is located. The output corresponds to two files: 

* firstDataset.txt: Contains the train set and test set merged in one table
* secondDataset.txt: Contains the average of each variable for each activity and each subject.

This script was coded using R version 3.0.2, RStudio version 0.97.551 and  OS X version 10.8.5

How the script works
----------------------------

The relevant files we use from the original dataset *Human Activity Recognition Using Smartphones Data Set* are:

* features.txt: List of all features (variable *features, line 12).

* activity_labels.txt: Links the class labels with their activity name (variable *activity_labels, line 52).

* train/X_train.txt: Training set (variable *X_train, line 17).

* train/y_train.txt: Training labels (variable *y_train, line 25).

* train/subject_train.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30 (variable *subject_train, line 21). 

* test/X_test.txt: Test set (variable *X_test, line 33).

* test/y_test.txt: Test labels (variavle *y_test, line 42).

- test/subject_test.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30 (variable *subject_test, line 36). 

With the list of features we named the columns in X_train (line 22) and X_test (line 34) 
We named the column for subject_train and subject_test as "subject" (line 22 and line 37).
We named the column for y_train and y_test as "activity" (line 26 and line 40).
We merge the data (by columns) for the test set, including subject_test, X_test and y_test in that order (line 29). We do the same for the test set with the corresponding variables (line 42)
Then we merge (by rows) the training set and the test set (line 45) in the *data variable.

We join *data and *activity_labels by the activity number in order to have the appropriate activity labels in *data (line 56).

In the variable *current_names (line 59) we store all the column names of data so we can modify them using regular expressions (lines 59-67), making them more descriptive (we use the information coming from the file features_info.txt in the original dataset *Human Activity Recognition Using Smartphones Data Set*). Finally we update the column names in *data (line 68).

We have to make sure that the column *subject in *data is a factor (line 71).

In *data2 we store the mean for each variable, subject and activity after using the *aggregate function (line 74). From line 77-80 we have to update again the name of the columns "subject" and "activityLabel" because for some reason, after using the *aggregate function, these columns were names Group.1 and Group.2 in *data2

Finally, the output files (firstDataset.txt and secondDataset.txt) are generated and stored in the same directory as the script file. 
