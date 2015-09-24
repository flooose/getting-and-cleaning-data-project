### Summary of files

- subject\_test.txt/subject\_train.txt - A single column table with subject ids
  column. There are 30 subjects all together. A random 30% were in the
  "test" group and the remaining 70% were in the "training" group.

- y_test/y_train.txt - A single column table with label ids. These are the
  label ids corresponding to those in `activity_labels.txt`

### Collecting data

- read X_test.txt

- set columnNames from features.txt

- throw out non-std and non-mean columns

- combine with y_test.txt

- replace numbers in y_test column with names from `activity_labels.txt`

- repeat for `train` data.

- combine datasets

- create final tidy data set
