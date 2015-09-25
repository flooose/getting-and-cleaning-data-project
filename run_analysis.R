library(reshape2)
library(dplyr)

# Extract data
unzip('getdata-projectfiles-UCI HAR Dataset.zip')

# First we process the "test" data

# Column names for data
features <- read.table('UCI HAR Dataset/features.txt')

# Labels for the numerical activity identifiers
activitiesLabels <- read.table('UCI HAR Dataset/activity_labels.txt', col.names = c('index', 'label'))

# Read "test" data and set column names
testData <- read.table('UCI HAR Dataset/test/X_test.txt', col.names = features[,2])

# Discard columns that do not have mean or std in them.
reducedTestData <- testData[,grep('mean|std', colnames(testData), value = T, ignore.case = T)]

# Numerical activity identifiers
testActivities <- read.table('UCI HAR Dataset/test/y_test.txt', col.names = c('activityIndex'), colClasses = c('factor'))

# Set labels for activity identifiers
levels(testActivities$activityIndex) <- activitiesLabels$label

# Test subjects
testSubjects <- read.table('UCI HAR Dataset/test/subject_test.txt')

# Aggregate columns by subjects and activity
aggTestData <- aggregate(reducedTestData, by = list(subjects = testSubjects$V1, activityType = testActivities$activityIndex), mean, na.action=na.pass, na.rm=T)

# Now the same thing for the train data
trainData <- read.table('UCI HAR Dataset/train/X_train.txt', col.names = features[,2])
reducedTrainData <- trainData[,grep('mean|std', colnames(trainData), value = T, ignore.case = T)]
trainActivities <- read.table('UCI HAR Dataset/train/y_train.txt', col.names = c('activityIndex'), colClasses = c('factor'))
levels(trainActivities$activityIndex) <- activitiesLabels$label
trainSubjects <- read.table('UCI HAR Dataset/train/subject_train.txt')

aggTrainData <- aggregate(reducedTrainData, by = list(subjects = trainSubjects$V1, activityType = trainActivities$activityIndex), mean, na.action=na.pass, na.rm=T)

# Then we combine testData and trainData
combinedData <- rbind(aggTestData, aggTrainData)

# Clean up the column names
columnames(combinedData) <- gsub('\\.+', '.', colnames(combinedData))

write.table(combinedData, file = 'tidy.txt', row.names = F)
