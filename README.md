## Working with this project

### Prerequisites

the R-script used in this projects assumes that you have downloaded
[getdata-projectfiles-UCI HAR Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
and saved it to the root directory of this repository. After that, the
script will unzip and process the data without further assistance.

### Running the script

In the R-console, `setwd` to the root directory of this
repository. Then:

    source('run_analysis.R')

After the script has run, there will be a new file named `tidy.txt` in
the root folder of this repository, if the file already exists, it
will be overwritten.
