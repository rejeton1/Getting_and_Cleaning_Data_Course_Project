# mean\_and\_std.csv / by\_activity\_subject.csv

## mean\_and\_std.csv<br/><br/>

#### activity

##### ‘activity performed by each subject’

-   STANDING  
-   SITTING  
-   LAYING  
-   WALKING  
-   WALKING\_DOWNSTAIRS  
-   WALKING\_UPSTAIRS<br/><br/>

#### subject

##### ‘subject ID’

-   1~30<br/><br/>

#### The following variables are named by several fixed rule.

1.  prefix ‘t’ means the variable is ‘time domain signal’, ‘f’ means
    ‘frequency domain signal’
2.  the values of variables come from the accelerometer and gyroscope
    3-axial raw signals so all variables below separated into ‘Acc’ or
    ‘Gyro’. ‘Acc’ means accelerometer and ‘Gyro’ means ‘gyroscope’
3.  the acceleration signal was then separated into body and gravity
    acceleration signals.
4.  the accelerometer and gyroscope signal is 3-axial raw signals(XYZ)
    and X, Y, Z each means ‘X-axial’, ‘Y-axial’, ‘Z-axial’
5.  In the case when variable has ‘Jerk’, it literally means ‘Jerk
    signal’.
6.  In the case when variable has ‘Mag’, it means ‘the magnitude of that
    variable’
7.  ‘mean’ means ‘mean value of that variable’, ‘std’ means ‘standard
    deviation value’

So, for example, ‘tBodyGyroJerk-mean-X’ means ‘X-axial mean value of
Body jerk from gyroscope in time domain.’

And all the values of variables are normalized and bounded within
\[-1,1\] The following is the list of the rest of variables in this data
that are named in this way.<br/><br/>

#### tBodyAcc-mean-X

#### tBodyAcc-mean-Y

#### tBodyAcc-mean-Z

#### tBodyAcc-std-X

#### tBodyAcc-std-Y

#### tBodyAcc-std-Z

#### tGravityAcc-mean-X

#### tGravityAcc-mean-Y

#### tGravityAcc-mean-Z

#### tGravityAcc-std-X

#### tGravityAcc-std-Y

#### tGravityAcc-std-Z

#### tBodyAccJerk-mean-X

#### tBodyAccJerk-mean-Y

#### tBodyAccJerk-mean-Z

#### tBodyAccJerk-std-X

#### tBodyAccJerk-std-Y

#### tBodyAccJerk-std-Z

#### tBodyGyro-mean-X

#### tBodyGyro-mean-Y

#### tBodyGyro-mean-Z

#### tBodyGyro-std-X

#### tBodyGyro-std-Y

#### tBodyGyro-std-Z

#### tBodyGyroJerk-mean-X

#### tBodyGyroJerk-mean-Y

#### tBodyGyroJerk-mean-Z

#### tBodyGyroJerk-std-X

#### tBodyGyroJerk-std-Y

#### tBodyGyroJerk-std-Z

#### tBodyAccMag-mean()

#### tBodyAccMag-std()

#### tGravityAccMag-mean()

#### tGravityAccMag-std()

#### tBodyAccJerkMag-mean()

#### tBodyAccJerkMag-std()

#### tBodyGyroMag-mean()

#### tBodyGyroMag-std()

#### tBodyGyroJerkMag-mean()

#### tBodyGyroJerkMag-std()

#### fBodyAcc-mean-X

#### fBodyAcc-mean-Y

#### fBodyAcc-mean-Z

#### fBodyAcc-std-X

#### fBodyAcc-std-Y

#### fBodyAcc-std-Z

#### fBodyAcc-meanFreq-X

#### fBodyAcc-meanFreq-Y

#### fBodyAcc-meanFreq-Z

#### fBodyAccJerk-mean-X

#### fBodyAccJerk-mean-Y

#### fBodyAccJerk-mean-Z

#### fBodyAccJerk-std-X

#### fBodyAccJerk-std-Y

#### fBodyAccJerk-std-Z

#### fBodyAccJerk-meanFreq-X

#### fBodyAccJerk-meanFreq-Y

#### fBodyAccJerk-meanFreq-Z

#### fBodyGyro-mean-X

#### fBodyGyro-mean-Y

#### fBodyGyro-mean-Z

#### fBodyGyro-std-X

#### fBodyGyro-std-Y

#### fBodyGyro-std-Z

#### fBodyGyro-meanFreq-X

#### fBodyGyro-meanFreq-Y

#### fBodyGyro-meanFreq-Z

#### fBodyAccMag-mean()

#### fBodyAccMag-std()

#### fBodyAccMag-meanFreq()

#### fBodyBodyAccJerkMag-mean()

#### fBodyBodyAccJerkMag-std()

#### fBodyBodyAccJerkMag-meanFreq()

#### fBodyBodyGyroMag-mean()

#### fBodyBodyGyroMag-std()

#### fBodyBodyGyroMag-meanFreq()

#### fBodyBodyGyroJerkMag-mean()

#### fBodyBodyGyroJerkMag-std()

#### fBodyBodyGyroJerkMag-meanFreq()<br/><br/><br/><br/>

## by\_activity\_subject.csv<br/><br/>

This data is grouped by 6 activities that subjects performed, and 30
subjects. So the mean and values of each variables(i.e. ‘activity’,
‘subject’, ‘tBodyAcc-mean-X’…) are same in ‘mean\_and\_std.csv’ except
that in ‘by\_activity\_subject.csv’ the values of variables from
‘tBodyAcc-mean-X’ to ‘fBodyBodyGyroJerkMag-meanFreq()’ is the average of
that value for each activity and each subject.
