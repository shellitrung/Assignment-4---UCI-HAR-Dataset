#Introduction

1. All data files were loaded into R.
2. Respective data sets of X, Y and Subject were merged using `rbind()`. 
3. The mean and standard deviaton was taken for all the values were measurements were taken.
4. Names were assigned using the file `features.txt`
5. `activity_lables.txt` shows a list of IDs and corresponding activity names. These were replaced in the dataset accordingly.
6. Renamed columns with more descriptive names.
7. New dataset generated with averages for each subject and activity and written into `average_set.txt`

#Variables
Data files: `x_train`, `x_test`, `y_train`, `y_test`, `subject_test`, `subject_train`. `activity` outlines 6 activity names and `features` shows all the measurement names for the x datasets.

Data sets: `x`, `y` and `subject` is the merged datasets from the data files.

Mean|Standard deviation: `mean_std_features` is a vector that stores the mean and standard deviations of `x` dataset.

Tidy data: `all_data` is the combined data of the 3 datasets with all naming cleaned.

Averages data: `average_set` is the final average dataset for combination of variables.




