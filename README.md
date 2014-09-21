CleaningDataProject
===================

By: José Robles

How to use the script
----------------------------

The folder "UCI HAR Dataset" and the script "run_analysis.R" should be stored in the same directory. Before executing the script, it is necessary to have installed the R package *plyr* and set up the variable *dir* (line 8 in the script) with the path where the script is located. The output corresponds to two files: 

* firstDataset.txt: Contains the train set and test set merged in one table
* secondDataset.txt: Contains the average of each variable for each activity and each subject.

This script was coded using R version 3.0.2, RStudio version 0.97.551 and  OS X version 10.8.5

