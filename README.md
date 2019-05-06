
README

Data and transformation

The UCI HAR Dataset zip file was downloaded and saved in local folder. The contents of the zip file were also saved in
the same folder, after unzipping the file. Next, all the data (features, activity_labels, Y_test, subject_test, X_test, Y_train, subject_train, X_train, subject_train_test, train_test_Y, train_test_X) that were required for the project were 
read and loaded into the work space. In order to avoid confusion, the same names were used for each dataset. Before
compling the data into one, some changes to the names of the variables werer applied in each of the datum.

First, in the features dataset, all the panctuations were replaced by underscore. The redandant wrods were removed and the abbrevations were replaced with meaningful words. Next, in the subject dataset, for both Test and Train groups the name were replaced by subject_id. Next, similar procedure were applied to changed the names of the Y.train, Y.test, and activity_lables variables. Then, the labels in the feature data were applied to replace the column names of X.train and
X.test datasets.

After cleaning the names of the vraibles of the datasets, the datasets that have common columns were combinded using
rbinding; subject_id, activity type, and the actual data for both Test and Train data. Then the three datasets were combined using cbinding and merged with the activity data into one dataset.

A subset of the final dataset that contains mean and standard deviation of each measure were extracted and saved in a
seperate file. Finally, a subset of the final tidy data that has the average of each variable grouped by subject ID and activity type were extracted. To achieve this, first the redandant variable names were changed into unique names, and then, grouped by subject ID and activity type to calculate the mean of each variable. The resulting dataset was saved 
in a separate file.



Information about the data:

This data preparation and cleaning is based on the experiment that was carried out with a group of 30 volunteers. Smartphones were used to collect data of certain activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) performed by the participant.

The some of datasets in the package include:


X_test:          This dataset contains 561 feature vectors (variables) of the Test data set.
                   
Y_test:          contains a single variable (activity code)
                   
subject_test:    contains the Id of the particpants in the Test group

X_train:         dataset contains 561 feature vectors (variables) of the train data set.

Y_train:         contains a single variable (activity code)

subject_train:   contains the Id of the particpants in the Train group

activity_labels: contains activity code and lable

features:        contains the list of variable names that crossponds with the variables in the X_test and X_train


Transformed datasets:


subject_train_test:   combined dataset of the Train and Test subject Id

train_test_Y:         combined dataset of the Train and Test activity codes

train_test_X:         combined dataset of the Train and Test feature vector datasets 

All_data:             contains all the data from the Train and Test data

All_data_mean_std:    a subset of the combined data that has mean and standard deviation of the features

All_data_average:     a subset of the combined data that contains the average of each feature grouped by
                      activity 
     
     
