Final Project
============================================
Getting and Cleaning Data Course on Coursera
=============================================
---
- Title: Codebook
- Author: Juan Pablo Roberto Barbosa
- Date: 20th January 2017
---

## Project Description
This project relies on the work of Davide et.al (2013). It consists on a set of experiments carried out to recognize different human activities using smartphones.

## Study design and data processing
The experiment is described by the authors:
>  "...a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3- axial linear acceleration and 3- axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details" (Davide et. al,2013).

## Collection of the raw data

### For each record it was provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561- feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

### Raw data files:
The data were extracted from the website http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones, and consisted of the following files:
>
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

There were also files available for train and test data, described by Davide et. al (2013) as: 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

## Tidy data file creation

### Getting the data
1. Download the file from [this link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

2. Extract its files in your R working directory.

### Cleaning the data
The data was cleaned in the following way:

1. The training and the test sets were merged to create one data set.
2. Only the measurements on the mean and standard deviation for each measurement were extracted.
3. Descriptive activity names were used to name the activities in the data set.
4. Descriptive variable names were given to each variable of the dataset.
5. A second, independent tidy data set with the average of each variable for each activity and each subject was created.

Run the R script from [here](github)

## Variables in the tidyData.txt file:

### Summary

- Dimensions: 180 x 88
 
### Variables description: 

#### Subjects and actions
- subject, identifier of subject who participated int thex experiment: Factor w/ 30 levels "1","2","3","4",..: 1 1 1 1 1 1 2 2 2 2 ...

- action, identifier of actions that subjects performed during the experiment: Factor w/ 6 levels "laying","sitting",..: 1 2 3 4 5 6 1 2 3 4 ...

#### Measurement variables

##### The list of variables are described below, together with their measurement unit. To interpret them, they may contain different abbreviations, which are explained below:

* time: denotes time measurement
* feq: denotes frequency measurement
* gyro: refers to a signal obtained from the gyroscope
* acc: refers to a signal obtained from the accelerometer
* body: a type of acceleration signal
* gravity: a type of acceleration signal
* mag: refers to the magnitude of the signal
* x, y and z: refer to the direction axis
* angle: refers to the angle between two vectors
* mean refers to the mean value

##### The list is the following:

- timebodyacc-mean-x                : num  0.286 0.276 0.273 0.272 0.276 ...
- timebodyacc-mean-y                : num  -0.01972 -0.0246 -0.00854 -0.01766 -0.01958 ...
- timebodyacc-mean-z                : num  -0.117 -0.111 -0.112 -0.108 -0.114 ...
- timegravityacc-mean-x             : num  0.575 0.855 0.838 0.665 0.608 ...
- timegravityacc-mean-y             : num  0.1117 -0.0975 -0.0393 -0.0512 0.1271 ...
- timegravityacc-mean-z             : num  0.2776 -0.1674 0.0868 0.1313 0.0557 ...
- timebodyaccjerk-mean-x            : num  0.053 0.0659 0.0906 0.086 0.0528 ...
- timebodyaccjerk-mean-y            : num  0.03763 0.01318 -0.00399 0.00338 0.02233 ...
- timebodyaccjerk-mean-z            : num  -0.01657 0.05139 0.01713 -0.00509 0.01096 ...
- timebodygyro-mean-x               : num  -0.08787 0.03124 -0.03589 -0.04864 -0.00764 ...
- timebodygyro-mean-y               : num  -0.0666 -0.0813 -0.0691 -0.0792 -0.0865 ...
- timebodygyro-mean-z               : num  0.072 0.0325 0.0701 0.0924 0.0866 ...
- timebodygyrojerk-mean-x           : num  -0.119 -0.1138 -0.1122 -0.0888 -0.0925 ...
- timebodygyrojerk-mean-y           : num  -0.0276 -0.0362 -0.0246 -0.0419 -0.041 ...
- timebodygyrojerk-mean-z           : num  -0.057 -0.0735 -0.0568 -0.0484 -0.0423 ...
- timebodyaccmag-mean               : num  -0.598 -0.41 -0.479 -0.69 -0.635 ...
- timegravityaccmag-mean            : num  -0.598 -0.41 -0.479 -0.69 -0.635 ...
- timebodyaccjerkmag-mean           : num  -0.727 -0.535 -0.626 -0.743 -0.71 ...
- timebodygyromag-mean              : num  -0.6 -0.51 -0.503 -0.716 -0.709 ...
- timebodygyrojerkmag-mean          : num  -0.818 -0.706 -0.688 -0.847 -0.798 ...
- freqbodyacc-mean-x                : num  -0.665 -0.536 -0.591 -0.723 -0.683 ...
- freqbodyacc-mean-y                : num  -0.623 -0.429 -0.502 -0.665 -0.604 ...
- freqbodyacc-mean-z                : num  -0.687 -0.469 -0.536 -0.782 -0.776 ...
- freqbodyacc-mean-x                : num  -0.283 -0.273 -0.268 -0.199 -0.156 ...
- freqbodyacc-mean-y                : num  -0.05011 -0.03415 -0.07418 -0.00904 0.07146 ...
- freqbodyacc-mean-z                : num  0.0166 -0.0469 -0.0502 0.0676 0.0562 ...
- freqbodyaccjerk-mean-x            : num  -0.717 -0.579 -0.644 -0.739 -0.708 ...
- freqbodyaccjerk-mean-y            : num  -0.714 -0.54 -0.632 -0.718 -0.669 ...
- freqbodyaccjerk-mean-z            : num  -0.793 -0.613 -0.662 -0.83 -0.828 ...
- freqbodyaccjerk-mean-x            : num  -0.04016 -0.1443 -0.09953 -0.02342 0.00299 ...
- freqbodyaccjerk-mean-y            : num  -0.177 -0.233 -0.284 -0.187 -0.199 ...
- freqbodyaccjerk-mean-z            : num  -0.1234 -0.2731 -0.2527 -0.0965 -0.1024 ...
- freqbodygyro-mean-x               : num  -0.71 -0.652 -0.632 -0.744 -0.719 ...
- freqbodygyro-mean-y               : num  -0.718 -0.622 -0.583 -0.818 -0.794 ...
- freqbodygyro-mean-z               : num  -0.67 -0.527 -0.629 -0.745 -0.691 ...
- freqbodygyro-mean-x               : num  -0.173 -0.174 -0.147 -0.119 -0.151 ...
- freqbodygyro-mean-y               : num  -0.331 -0.188 -0.278 -0.17 -0.146 ...
- freqbodygyro-mean-z               : num  -0.14818 -0.10272 -0.17642 -0.09465 0.00081 ...
- freqbodyaccmag-mean               : num  -0.643 -0.459 -0.505 -0.701 -0.642 ...
- freqbodyaccmag-mean               : num  0.0417 0.1074 0.0102 0.0336 0.0628 ...
- freqbodybodyaccjerkmag-mean       : num  -0.699 -0.514 -0.593 -0.714 -0.674 ...
- freqbodybodyaccjerkmag-mean       : num  0.204 0.155 0.156 0.153 0.109 ...
- freqbodybodygyromag-mean          : num  -0.719 -0.659 -0.578 -0.792 -0.755 ...
- freqbodybodygyromag-mean          : num  -0.1652 0.0128 -0.08 -0.0938 -0.0696 ...
- freqbodybodygyrojerkmag-mean      : num  -0.834 -0.735 -0.684 -0.855 -0.818 ...
- freqbodybodygyrojerkmag-mean      : num  0.07559 0.22403 0.11833 0.07127 -0.00679 ...
- angletbodyaccmeangravity          : num  -0.0206 -0.00112 0.0345 0.03404 -0.00656 ...
- angletbodyaccjerkmeangravity-mean : num  0.0581 0.0818 0.0424 0.0205 -0.0235 ...
- angletbodygyromeangravity-mean    : num  0.0393 -0.2371 0.0868 0.1065 -0.1193 ...
- angletbodygyrojerkmeangravity-mean: num  0.05426 0.00911 0.07584 0.00861 -0.02405 ...
- anglexgravity-mean                : num  -0.413 -0.659 -0.68 -0.516 -0.469 ...
- angleygravity-mean                : num  -0.00493 0.15068 0.10462 0.10955 -0.07755 ...
- anglezgravity-mean                : num  -0.1992 0.136 -0.0443 -0.0901 -0.0188 ...
- timebodyacc-std-x                 : num  -0.654 -0.507 -0.581 -0.722 -0.669 ...
- timebodyacc-std-y                 : num  -0.59 -0.4 -0.452 -0.658 -0.58 ...
- timebodyacc-std-z                 : num  -0.597 -0.364 -0.469 -0.753 -0.748 ...
- timegravityacc-std-x              : num  -0.968 -0.974 -0.947 -0.967 -0.978 ...
- timegravityacc-std-y              : num  -0.964 -0.967 -0.932 -0.962 -0.954 ...
- timegravityacc-std-z              : num  -0.943 -0.944 -0.888 -0.956 -0.954 ...
- timebodyaccjerk-std-x             : num  -0.712 -0.545 -0.631 -0.724 -0.695 ...
- timebodyaccjerk-std-y             : num  -0.707 -0.518 -0.619 -0.703 -0.634 ...
- timebodyaccjerk-std-z             : num  -0.814 -0.637 -0.691 -0.846 -0.839 ...
- timebodygyro-std-x                : num  -0.737 -0.684 -0.681 -0.778 -0.753 ...
- timebodygyro-std-y                : num  -0.644 -0.595 -0.557 -0.798 -0.795 ...
- timebodygyro-std-z                : num  -0.653 -0.499 -0.629 -0.752 -0.735 ...
- timebodygyrojerk-std-x            : num  -0.783 -0.739 -0.703 -0.803 -0.749 ...
- timebodygyrojerk-std-y            : num  -0.844 -0.725 -0.68 -0.875 -0.838 ...
- timebodygyrojerk-std-z            : num  -0.786 -0.656 -0.753 -0.816 -0.727 ...
- timebodyaccmag-std                : num  -0.638 -0.478 -0.508 -0.704 -0.639 ...
- timegravityaccmag-std             : num  -0.638 -0.478 -0.508 -0.704 -0.639 ...
- timebodyaccjerkmag-std            : num  -0.713 -0.527 -0.599 -0.717 -0.675 ...
- timebodygyromag-std               : num  -0.629 -0.633 -0.551 -0.763 -0.719 ...
- timebodygyrojerkmag-std           : num  -0.833 -0.741 -0.679 -0.855 -0.808 ...
- freqbodyacc-std-x                 : num  -0.651 -0.497 -0.58 -0.723 -0.664 ...
- freqbodyacc-std-y                 : num  -0.602 -0.423 -0.464 -0.678 -0.595 ...
- freqbodyacc-std-z                 : num  -0.588 -0.36 -0.479 -0.758 -0.754 ...
- freqbodyaccjerk-std-x             : num  -0.733 -0.55 -0.651 -0.734 -0.71 ...
- freqbodyaccjerk-std-y             : num  -0.719 -0.528 -0.632 -0.708 -0.621 ...
- freqbodyaccjerk-std-z             : num  -0.833 -0.66 -0.719 -0.861 -0.85 ...
- freqbodygyro-std-x                : num  -0.748 -0.697 -0.699 -0.791 -0.766 ...
- freqbodygyro-std-y                : num  -0.611 -0.583 -0.55 -0.79 -0.798 ...
- freqbodygyro-std-z                : num  -0.681 -0.538 -0.665 -0.779 -0.777 ...
- freqbodyaccmag-std                : num  -0.693 -0.572 -0.589 -0.753 -0.693 ...
- freqbodybodyaccjerkmag-std        : num  -0.735 -0.55 -0.609 -0.722 -0.681 ...
- freqbodybodygyromag-std           : num  -0.64 -0.681 -0.618 -0.786 -0.749 ...
- freqbodybodygyrojerkmag-std       : num  -0.843 -0.77 -0.697 -0.865 -0.809 ...

## Sources
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.
