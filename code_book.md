## Code Book

This code book will describe the data used in this project, as well as the processing required to create the resulting tidy data set.

### Overview

30 volunteers performed 6 different activities while wearing a smartphone. The smartphone captured various data about their movements.

### Explanation of each file

* `features.txt`: Names of the 561 features.
* `activity_labels.txt`: Names and IDs for each of the 6 activities.

* `X_train.txt`: 7352 observations of the 561 features, for 21 of the 30 volunteers.
* `subject_train.txt`: A vector of 7352 integers, denoting the ID of the volunteer related to each of the observations in `X_train.txt`.
* `y_train.txt`: A vector of 7352 integers, denoting the ID of the activity related to each of the observations in `X_train.txt`.

* `X_test.txt`: 2947 observations of the 561 features, for 9 of the 30 volunteers.
* `subject_test.txt`: A vector of 2947 integers, denoting the ID of the volunteer related to each of the observations in `X_test.txt`.
* `y_test.txt`: A vector of 2947 integers, denoting the ID of the activity related to each of the observations in `X_test.txt`.

More information about the files is available in `README.txt`. More information about the features is available in `features_info.txt`.

### Processing steps

1. All of the relevant data files were read into data frames, appropriate column headers were added, and the training and test sets were combined into a single data set.
2. All feature columns were removed that did not contain the exact string "mean()" or "std()". This left 66 feature columns, plus the subjectID and activity columns.
3. The activity column was converted from a integer to a factor, using labels describing the activities.
4. A tidy data set was created containing the mean of each feature for each subject and each activity. Thus, subject #1 has 6 rows in the tidy data set (one row for each activity), and each row contains the mean value for each of the 66 features for that subject/activity combination. Since there are 30 subjects, there are a total of 180 rows.
5. The tidy data set was output to a CSV file.


Variables: 

In the 5th step I've melt the data down by 2 identifiers, other variables are calculated by mean()
###ID
 activitylabel 
 ID 


###Measurements/Mean and stardard deviation.

 tBodyAcc-mean-Y
 tBodyAcc-mean-Z
 tBodyAcc-std-X
 tBodyAcc-std-Y
 tBodyAcc-std-Z
 tGravityAcc-mean-X
 tGravityAcc-mean-Y
 tGravityAcc-mean-Z
 tGravityAcc-std-X
 tGravityAcc-std-Y
 tGravityAcc-std-Z
 tBodyAccJerk-mean-X
 tBodyAccJerk-mean-Y
 tBodyAccJerk-mean-Z
 tBodyAccJerk-std-X
 tBodyAccJerk-std-Y
 tBodyAccJerk-std-Z
 tBodyGyro-mean-X
 tBodyGyro-mean-Y
 tBodyGyro-mean-Z
 tBodyGyro-std-X
 tBodyGyro-std-Y
 tBodyGyro-std-Z
 tBodyGyroJerk-mean-X
 tBodyGyroJerk-mean-Y
 tBodyGyroJerk-mean-Z
 tBodyGyroJerk-std-X
 tBodyGyroJerk-std-Y
 tBodyGyroJerk-std-Z
 tBodyAccMag-mean
 tBodyAccMag-std
 tGravityAccMag-mean
 tGravityAccMag-std
 tBodyAccJerkMag-mean
 tBodyAccJerkMag-std
 tBodyGyroMag-mean
 tBodyGyroMag-std
 tBodyGyroJerkMag-mean
 tBodyGyroJerkMag-std
 fBodyAcc-mean-X
 fBodyAcc-mean-Y
 fBodyAcc-mean-Z
 fBodyAcc-std-X
 fBodyAcc-std-Y
 fBodyAcc-std-Z
 fBodyAccJerk-mean-X
 fBodyAccJerk-mean-Y
 fBodyAccJerk-mean-Z
 fBodyAccJerk-std-X
 fBodyAccJerk-std-Y
 fBodyAccJerk-std-Z
 fBodyGyro-mean-X
 fBodyGyro-mean-Y
 fBodyGyro-mean-Z
 fBodyGyro-std-X
 fBodyGyro-std-Y
 fBodyGyro-std-Z
 fBodyAccMag-mean
 fBodyAccMag-std
 fBodyBodyAccJerkMag-mean
 fBodyBodyAccJerkMag-std
 fBodyBodyGyroMag-mean
 fBodyBodyGyroMag-std
 fBodyBodyGyroJerkMag-mean
 fBodyBodyGyroJerkMag-std
