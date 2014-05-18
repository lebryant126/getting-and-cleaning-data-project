# README file
---

The dataset includes the following files:

- 'README.md'

- 'CodeBook.md': Provides information regrading variables in the processed data set, along with information about the original data set and study design.

- 'run_analysis.R': Contains the R script for reproducing the processed data set. Below are the step of the script
  1. loading the UCI HAR data files
  2. Create column names for test and train data files
  3. Add varible "group" to retain training or testing status of subjects
  4. Merge dataframes to create "main_df"
  5. Add activity labels for "activity" variable observations using car package
  6. Extract measurements involving the mean and standard deviation of the 
     original inertial signals
  7. Create new dataframe "avg_of_mean_and_std_df" using the Reshape2 package that  
     provides the mean of the extracted measurements for each combination of subject  
     and activity. Relabel variables to indicate a mean has been computed. Write 
     "avg_of_mean_and_std_df" to tab delimited text file called 
     "avg_of_mean_and_std_measruements.txt" in working directory.

- 'avg_of_mean_and_std_measurements.txt': The processed data set.

- 'avg_of_mean_and_std_feature_list.txt': List of all features in the processed data set.

- 'features_info.txt': Shows information about the variables used on the feature vector in the original UCI HAR dataset.

- 'features.txt': List of all features in the original UCI HAR dataset..


