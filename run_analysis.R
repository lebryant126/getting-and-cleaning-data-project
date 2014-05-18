# We merge the data files of the UCI HAR dataset into a single dataframe 
# called "main_df". We extract measurements involving the mean and standard 
# deviation of the original inertial signals. Lastly, a second dataframe 
# "avg_of_mean_and_std_df" is created that provides the mean of the extracted
# measurements for each combination of subject and activity.
  
  # loading the UCI HAR data files
activity_labels <- read.table(file="UCI HAR dataset/activity_labels.txt", 
                              stringsAsFactors=FALSE)
features        <- read.table(file="UCI HAR dataset/features.txt", 
                              stringsAsFactors=FALSE)
subject_test    <- read.table(file="UCI HAR dataset/test/subject_test.txt")
activity_test   <- read.table(file="UCI HAR dataset/test/y_test.txt")
x_test          <- read.table(file="UCI HAR dataset/test/X_test.txt")
subject_train   <- read.table(file="UCI HAR dataset/train/subject_train.txt")
activity_train  <- read.table(file="UCI HAR dataset/train/y_train.txt")
x_train         <- read.table(file="UCI HAR dataset/train/X_train.txt")

  # Create column names for test and train data files
names(subject_test)  <- "subject"
names(activity_test) <- "activity"
names(x_test)        <- features$V2
names(subject_train)  <- "subject"
names(activity_train) <- "activity"
names(x_train)        <- features$V2

  # Add varible "group" to retain training or testing status of subjects
subject_test["group"]  <- "test"
subject_train["group"] <- "train"

  # Merge dataframes to create "main_df"
test_df <- cbind(subject_test, activity_test, x_test)
train_df <- cbind(subject_train, activity_train, x_train)
main_df <- rbind(test_df, train_df)

  # Add activity labels for "activity" variable observations using car package
library("car")
main_df$activity <- recode(main_df$activity, "1=activity_labels[1,2];
                           2=activity_labels[2,2]; 3=activity_labels[3,2];
                           4=activity_labels[4,2]; 5=activity_labels[5,2];
                           6=activity_labels[6,2]")

  # Extract measurements involving the mean and standard deviation of the 
  # original inertial signals
mean_and_std_df <- main_df[c(1, 2, 3, grep("mean",names(main_df)),
                         grep("std", names(main_df)))]

  # Create new dataframe "avg_of_mean_and_std_df" using the Reshape2 package
  # that provides the mean of the extracted measurements for each combination 
  # of subject and activity. Relabel variables to indicate a mean has been 
  # computed. Write "avg_of_mean_and_std_df" to tab delimited text file called 
  # "avg_of_mean_and_std_measruements.txt" in working directory.
library("reshape2")
molten <- melt(mean_and_std_df, id=1:3)
avg_of_mean_and_std_df <- dcast(molten, subject + group + activity ~ variable,mean) 
names(avg_of_mean_and_std_df)[4:82] <- 
        paste0("avg-", names(avg_of_mean_and_std_df)[4:82])
write.table(avg_of_mean_and_std_df, "avg_of_mean_and_std_measurements.txt", sep="\t")



  

