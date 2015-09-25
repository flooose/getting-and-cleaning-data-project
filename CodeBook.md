## Study design

This analysis consists of two similar datasets. One is "test" and one
is "train". The datasets differ in the number of subjects that were
tested. There were 30 subjects all together in the original study,
30% of which were in the "test" group and the rest were in the "train"
group.

The data collected reside in each group's `Inertial Signals` folder
and were used to produce the files `X_test.txt` and `X_train.txt`,
which are the files that were in this analysis.

In the analysis we were only interested in the mean- and standard
deviation columns, resulting in a subset of variables of 86 out of the
original 561.

We then used the corresponding subject\_test.txt/subject_train.txt and
y\_test.txt/y\_train.txt' files to group categorize these data
respectively by subject id and activity type id to subsequently
calculate the mean of each grouping.

The labels for each activity id are listed in `activity_labels.txt`.

## Code book

The measurements used were taken by accelerometers (m/s²) and
gyroscopes (m/s) in smartphones. The values were then normalized and
bounded between [-1, 1].

The following variables were part of the analysis:

subjects
activityType
tBodyAcc.mean.X
tBodyAcc.mean.Y
tBodyAcc.mean.Z
tBodyAcc.std.X
tBodyAcc.std.Y
tBodyAcc.std.Z
tGravityAcc.mean.X
tGravityAcc.mean.Y
tGravityAcc.mean.Z
tGravityAcc.std.X
tGravityAcc.std.Y
tGravityAcc.std.Z
tBodyAccJerk.mean.X
tBodyAccJerk.mean.Y
tBodyAccJerk.mean.Z
tBodyAccJerk.std.X
tBodyAccJerk.std.Y
tBodyAccJerk.std.Z
tBodyGyro.mean.X
tBodyGyro.mean.Y
tBodyGyro.mean.Z
tBodyGyro.std.X
tBodyGyro.std.Y
tBodyGyro.std.Z
tBodyGyroJerk.mean.X
tBodyGyroJerk.mean.Y
tBodyGyroJerk.mean.Z
tBodyGyroJerk.std.X
tBodyGyroJerk.std.Y
tBodyGyroJerk.std.Z
tBodyAccMag.mean.
tBodyAccMag.std.
tGravityAccMag.mean.
tGravityAccMag.std.
tBodyAccJerkMag.mean.
tBodyAccJerkMag.std.
tBodyGyroMag.mean.
tBodyGyroMag.std.
tBodyGyroJerkMag.mean.
tBodyGyroJerkMag.std.
fBodyAcc.mean.X
fBodyAcc.mean.Y
fBodyAcc.mean.Z
fBodyAcc.std.X
fBodyAcc.std.Y
fBodyAcc.std.Z
fBodyAcc.meanFreq.X
fBodyAcc.meanFreq.Y
fBodyAcc.meanFreq.Z
fBodyAccJerk.mean.X
fBodyAccJerk.mean.Y
fBodyAccJerk.mean.Z
fBodyAccJerk.std.X
fBodyAccJerk.std.Y
fBodyAccJerk.std.Z
fBodyAccJerk.meanFreq.X
fBodyAccJerk.meanFreq.Y
fBodyAccJerk.meanFreq.Z
fBodyGyro.mean.X
fBodyGyro.mean.Y
fBodyGyro.mean.Z
fBodyGyro.std.X
fBodyGyro.std.Y
fBodyGyro.std.Z
fBodyGyro.meanFreq.X
fBodyGyro.meanFreq.Y
fBodyGyro.meanFreq.Z
fBodyAccMag.mean.
fBodyAccMag.std.
fBodyAccMag.meanFreq.
fBodyBodyAccJerkMag.mean.
fBodyBodyAccJerkMag.std.
fBodyBodyAccJerkMag.meanFreq.
fBodyBodyGyroMag.mean.
fBodyBodyGyroMag.std.
fBodyBodyGyroMag.meanFreq.
fBodyBodyGyroJerkMag.mean.
fBodyBodyGyroJerkMag.std.
fBodyBodyGyroJerkMag.meanFreq.
angle.tBodyAccMean.gravity.
angle.tBodyAccJerkMean.gravityMean.
angle.tBodyGyroMean.gravityMean.
angle.tBodyGyroJerkMean.gravityMean.
angle.X.gravityMean.
angle.Y.gravityMean.
angle.Z.gravityMean.
