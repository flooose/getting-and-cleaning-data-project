library(reshape2)
library(dplyr)

# Column names for test data
features <- read.table('UCI HAR Dataset/features.txt')

# Read "test" data and set column names
testData <- read.table('UCI HAR Dataset/test/X_test.txt', col.names = features[,2])
trainData <- read.table('UCI HAR Dataset/train/X_train.txt', col.names = features[,2])

# Discard columns that do not have mean or std in them.
reducedTestData <- testData[,grep('mean|std', colnames(testData), value = T, ignore.case = T)]
reducedTrainData <- trainData[,grep('mean|std', colnames(trainData), value = T, ignore.case = T)]

# Numerical activity identifiers
testActivities <- read.table('UCI HAR Dataset/test/y_test.txt', col.names = c('activityIndex'), colClasses = c('factor'))
trainActivities <- read.table('UCI HAR Dataset/train/y_train.txt', col.names = c('activityIndex'), colClasses = c('factor'))

# The actual activity labels
activitiesLabels <- read.table('UCI HAR Dataset/activity_labels.txt', col.names = c('index', 'label'))
# Set labels for reducedTestData$activityLabels
levels(testActivities$activityIndex) <- activitiesLabels$label
levels(trainActivities$activityIndex) <- activitiesLabels$label

# Add subjects
testSubjects <- read.table('UCI HAR Dataset/test/subject_test.txt')
## reducedTestData$subjects <- subjects$V1
trainSubjects <- read.table('UCI HAR Dataset/train/subject_train.txt')
## reducedTrainData$subjects <- subjects$V1

# Aggregate columns by
aggTestData <- aggregate(reducedTestData, by = list(subjects = testSubjects$V1, labels <- testActivities$activityIndex), mean, na.action=na.pass, na.rm=T)
aggTrainData <- aggregate(reducedTrainData, by = list(subjects = trainSubjects$V1, labels <- trainActivities$activityIndex), mean, na.action=na.pass, na.rm=T)
