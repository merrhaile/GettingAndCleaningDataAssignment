

# Packages applied
library(plyr)
library(dplyr) 


# setting working directory
getwd()
setwd("/Users/meroneyeram/Desktop/Mac/R/3DataCleaning/week4/UCI HAR Dataset")

# Unzipping the Human Activity Recognition dataset to a specific folder

fileHARD <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileHARD , "./UCI HAR Dataset/hardata.zip")
unzip("./UCI HAR Dataset/hardata.zip",
      exdir = "./UCI HAR Dataset/")
unzip("./UCI HAR Dataset/hardata.zip", list = T)

# The following set of functions are used to read the components of the test and train dataset as dataframes into R

X_test <- read.csv("./UCI HAR Dataset/test/X_test.txt",
                   sep= "", header = F)
Y_test <- read.csv("./UCI HAR Dataset/test/y_test.txt",
                   sep= "", header = F)
subject_test <- read.csv("./UCI HAR Dataset/test/subject_test.txt",
                   sep= "", header = F)

X_train <- read.csv("./UCI HAR Dataset/train/X_train.txt",
                   sep= "", header = F)
Y_train <- read.csv("./UCI HAR Dataset/train/y_train.txt",
                   sep= "", header = F)
subject_train <- read.csv("./UCI HAR Dataset/train/subject_train.txt",
                    sep= "", header = F)


# Reading the activity label and features data

activity_labels <- read.csv("./UCI HAR Dataset/activity_labels.txt", sep= "", header = F)

features <- read.csv("./UCI HAR Dataset/features.txt", sep= "", header = F)

## In this step, the list of all features in the features data are used as column names in the test set (X_test)
# All punctuations are replaced by underscore
features <- features[,2]
features <- gsub("[[:punct:]]", "_", features)
features <- sub("___", "_", features)
features <- sub("__", "_", features)
features <- sub("BodyBody", "Body", features)
features <- gsub("^t", "Time", features)
features <- gsub("^f", "Frequency", features)
features <- gsub("Acc", "Accelerometer", features)
features <- gsub("Mag", "Magnitude", features)
features <- gsub("Gyro", "Gyroscope", features)
features <- gsub("angle_t", "Angle_Time", features)
features <- gsub("angle_", "Angle_", features)
features <- gsub("_gravityMean_", "_GravityMean_", features)
head(features, 5)
tail(features, 5)
# Renaming each variable in each dataframe with descriptive names

names(subject_test) <- gsub("V1", "subject_id", names(subject_test))
names(subject_train) <- gsub("V1", "subject_id", names(subject_train))

names(Y_test) <- gsub("V1", "activity", names(Y_test))
names(Y_train) <- gsub("V1", "activity", names(Y_train))

colnames(X_test) <- features
colnames(X_train) <- features

names(activity_labels) <- gsub("V1", "activity", names(activity_labels))
names(activity_labels) <- gsub("V2", "activity_label", names(activity_labels))



# In this step, all the data pertaining to Test are combinded in one dataframe 

subject_train_test <- rbind(subject_test, subject_train)
train_test_Y <- rbind(Y_test, Y_train)
train_test_X <- rbind(X_test, X_train)

All_data0 <- cbind(subject_train_test, train_test_Y , train_test_X)
All_data <- merge(All_data0, activity_labels, by.x= "activity", by.y= "activity", all=F, incomparables = NULL)
All_data[1:10, c("subject_id" , "activity", "activity_label")]


write.table(All_data, "./UCI HAR Dataset/All_HAR_data.txt", sep=" ")


### 
# Extracting the measurements on the mean and standard diviation for each measurments

All_data_mean_std <- All_data[,grepl("_mean_", names(All_data)) | grepl("_std_", names(All_data))]
names(All_data_mean_std)

###
# In this step, in order to subset the average of each variable grouped by subject ID and activity type, first I changed
# the variables names that are repeated into unique names using the following function. Then, I grouped the data and get
# the mean of each variable.

names(All_data) <- make.names(names(All_data), unique = T)
All_data_average <- All_data %>% 
        group_by(subject_id, activity)%>% 
        summarise_each(funs(if(is.numeric(.)) mean(., na.rm = TRUE) else first(.)))

All_data_average[1:5, 564]

# Freeing the work space
rm(features, activity_labels, Y_test, subject_test, X_test, Y_train, subject_train, X_train, subject_train_test,
   train_test_Y, train_test_X, All_data0)


# Saving the new compiled data
write.table(All_data_average, "./UCI HAR Dataset/All_HAR_data_tidy.txt", sep=" ")



#=========================================///////////////======================================================
#=========================================///////////////======================================================

