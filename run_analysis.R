setwd("./UCI HAR Dataset/")
library(dplyr)
##
## 1.Merges the training and the test sets to create one data set.
##
# Test set data preparation
testSet <- read.table("./test/X_test.txt")
testLbl <- read.table("./test/y_test.txt")
testSub <- read.table("./test/subject_test.txt")
testSet <- cbind(testSub, testLbl, testSet)

# Train set data preparation
trainSet <- read.table("./train/X_train.txt")
trainLbl <- read.table("./train/y_train.txt")
trainSub <- read.table("./train/subject_train.txt")
trainSet <- cbind(trainSub, trainLbl, trainSet)

# Combine Test and Train sets
cmbSet <- rbind(testSet, trainSet)

# Remove useless data
rm(testSet, testLbl, testSub, trainSet, trainLbl, trainSub)

# Add variable's name:
varNm <- read.table("./features.txt")[,2]
varNm <- factor(c("Subject_No", "Activity", as.character(varNm)))
names(cmbSet) <- varNm

##
## 2.Extracts only the measurements on the mean and standard deviation for each measurement.
##
# Extract the needed columns:
cmbSet <- cmbSet[,grepl("Subject_No|Activity|mean|std", varNm,ignore.case = T)] # Choose the needed columns



##
## 3.Uses descriptive activity names to name the activities in the data set.
##
cmbSet = transform(cmbSet, Activity = factor(Activity, labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")))



##
## 4.Appropriately labels the data set with descriptive variable names.
##
# No need


##
## 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
##

NewHARDataSet <- cmbSet %>% group_by(Subject_No,Activity) %>% summarise_each(funs(mean))
write.table(NewHARDataSet, file = "./NewHARDataSet.txt", row.names = F)
