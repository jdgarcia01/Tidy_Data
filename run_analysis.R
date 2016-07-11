
library(reshape2)


## Load the data sets and create one data set. 
## Read all into a table. 
subject_training <- read.table("train/subject_train.txt")
subject_test     <- read.table("test/subject_test.txt")
X_train          <- read.table("train/X_train.txt")
X_test           <- read.table("test/X_test.txt")
Y_train          <- read.table("train/y_train.txt")
Y_test           <- read.table("test/y_test.txt")

#### Currently the subject_test/training table do not have 
#### a descriptive column name.  We should put one on both
#### for clarity and keeping data tidy....:o)
names(subject_training) <- "ID"
names(subject_test)     <- "ID"

#### The X train/test files do not have descriptive names
#### They currently have default V names.  We should take the 
#### name (column 2) from the feature.txt file and add them.
#### 
features <- read.table("features.txt")
## Extract the column names with mean and std in them.
extract_mean_std_dev <- grepl("mean|std", features[,2]) 

## add the columns to the x/y/test/train data. 
names(X_train) <- features$V2
names(X_test)  <- features$V2
names(Y_train) <- "ActivityLabel"
names(Y_test)  <- "ActivityLabel"
### Lets bind the test data. 
test_data_bind <- cbind(subject_test, Y_test, X_test)
training_data_bind <- cbind(subject_training, Y_train, X_train)

### Combine into one single data set. 
merged_data <- rbind(test_data_bind, training_data_bind)

## Extract out the mean or std measures. 
extract_measurements  <- merged_data[ , grepl("mean| std", features$V2)]

### Add the descriptive activity labels to the data set. 
### Read them in from the activity_labels file.
activity_labels <- read.table("activity_labels.txt")


## Our tidy data set. 
our_tidy_data <-  dcast(melt(extract_measurements, id=c("ID", "ActivityLabel")), ID+ActivityLabel ~ variable, mean)

write.table(our_tidy_data, "tidy_data.txt", row.names = F)



