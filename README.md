## Introduction

This Project used data from
the <a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones">Samsung Galaxy S smartphone</a>. 
In this project, we have the following:

* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">NewHARDataSet data</a>

* <b>Description</b>: We should create one R script called run_analysis.R that does the following:

<ol>
<li>Merges the training and the test sets to create one data set.</li>
<li>Extracts only the measurements on the mean and standard deviation for each measurement.</li>
<li>Uses descriptive activity names to name the activities in the data set</li>
<li>Appropriately labels the data set with descriptive variable names.</li>
<li>From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.</li>
</ol>

## Loading the data

When loading the dataset into R, please consider the following:

* The NewHARDataSet set has 180 rows 8 columns.

* The values of all observation (except first two columns) are the average values of the original data sets for each Subject and Activity.

