April 22, 2018

These datasets are modifications from the original datasets:
"Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine."
The original data was modified follows:

- The variable names were changed for a more descriptive version
- Subject ID and activity codes were appended to the datasets
- The activity codes were replaced for descriptive names
- Columns that did not represent average or standard deviation of the original data were eliminated.
  This included mean calculations that were obtained by signal window sampling and the mean frequency
  as it was calculated through weighted averages of the frequency components.
- The training and testing datasets were merged into one data set (data1.txt)
- The average of each activity by subject was calculated (data2.txt)

Files included:
- readme.txt: This file.
- codebook.txt: description of the variables.
- run_analysis.R: R script used to processed original data and generate data1.csv and data2.csv
- data1.csv: Processed data as described above.
- data2.csv: Summarized data from data1.csv by activity of each subject (mean values)


From the authors of the original dataset:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 


==================================================================
For a detailed description of the experimental approch please refer to original data from:

==================================================================
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Human Activity Recognition Using Smartphones Dataset
Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws




http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

======================================
