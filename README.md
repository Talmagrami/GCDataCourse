## Introduction

This Project used data from
the <a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones">Samsung Galaxy S smartphone</a>. 
Here is the source data sets of this project:
<a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">HAR Data</a>.

We have prepared R script to produce new data set under the following consideration:
* <b>New Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">NewHARDataSet data</a>

* <b>Actions</b>: R script which I made called run_analysis.R that does the following:

<ol>
<li>Merges the training and the test sets to create one data set.</li>
<li>Extracts only the measurements on the mean and standard deviation for each measurement.</li>
<li>Uses descriptive activity names to name the activities in the data set</li>
<li>Appropriately labels the data set with descriptive variable names.</li>
<li>From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.</li>
</ol>

## Loading the data

After loading the source dataset into R, I considered the following:
* The train set contains 7352 rows and 561 columns, and test set contains 2947 rows and 561 columns.
* Before combine train and test sets (use rbind), I have joined train set with it's Subject and Activity data (use cbind); test set, too.
* The variable names of the new combined data set exist in 'feature.txt' in the source data set.
* I extracted all the columns which contain 'mean' or 'std' using 'grepl' function.
* I used 'transform' function to transfer the values of Activity from interger to factor (labels).
* I used dpylr::group_by function to create new data set 'NewHARDataSet' grouped by 'Subject' and 'Activity', and get the average of all variable for each of them.
* The NewHARDataSet set has 180 rows 8 columns.
