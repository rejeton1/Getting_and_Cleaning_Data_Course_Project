## run\_analysis.R

### This R script is implemented in the following step.<br/><br/>

#### 1. data loading

load needed data (‘x\_test.txt’, ‘x\_train.txt’ : featured data)
(‘y\_test.txt’, ‘y\_train.txt’ : activity label data)
(‘subject\_test.txt’, ‘subject\_train.txt’ : subject label
data)<br/><br/>

#### 2. merging data into one data set.

for this, create new dataframe and add ‘y\_test/y\_train’ and
‘subject\_test/subject\_train’ to 1st column and 2nd columm in that
dataframe respectively. And from 3rd to 563th column, add 561 featured
value in ‘x\_test.txt’ and ‘x\_train.txt’. To do it, split the value
attached in raw data.<br/><br/>

#### 3. naming descriptive name to ‘activity’ value.

replace numeric label(1-6) with descriptive name(i.e. ‘WALKING’,
‘STANDING’…)<br/><br/>

#### 4. naming descriptive variable names

To do this, load ‘features.txt’ that contains featured variable names
and add it to variable names from 3rd to 563th columns. And also add
‘activity’ and ‘subject’ as 1st and 2nd variable names.<br/><br/>

#### 5. extracting only mean and standard deviation values

use ‘grepl’ function to data at step4 to find variable that include
‘mean’ and ‘std’ in their names. And to include ‘activity’ and ‘subject’
columns, setting the 1st and 2nd result value of grepl to ‘TRUE’.
Finally, extract only ‘grepl = TRUE’ variables.<br/><br/>

### At this step, the data ‘mean\_and\_std.csv’ is created<br/><br/>

### The following step is additional step to create ‘by\_activity\_subject.csv’<br/><br/>

#### 6. grouping data by activity and subject

by using ‘group\_by’ function from ‘dplyr’ package.<br/><br/>

#### 7. summarising it for each activity and subject

summarising all mean values by using ‘summarise\_all’ function.
