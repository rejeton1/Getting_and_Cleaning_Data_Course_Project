library(stats)
library(base)
library(dplyr)
library(stringr)

# data loading
x_test <- read.csv("UCI HAR Dataset/test/X_test.txt")     
y_test <- read.csv("UCI HAR Dataset/test/y_test.txt")
x_train <- read.csv("UCI HAR Dataset/train/X_train.txt")
y_train <- read.csv("UCI HAR Dataset/train/y_train.txt")
subject_test <- read.csv("UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.csv("UCI HAR Dataset/train/subject_train.txt")

data <- data.frame(matrix(ncol = 563))
label <- suppressWarnings(
  c(as.numeric(y_test[[1]]), as.numeric(y_train[[1]])))
subject <- suppressWarnings(
  c(as.numeric(subject_test[[1]]), as.numeric(subject_train[[1]])))
data[1:10297,1] <- label
data[1:10297,2] <- subject

for(i in 1:2946){
    x_test[i,1] <- str_trim(x_test[i,1])
    splitted <- strsplit(x_test[i,1], " ")
    value <- splitted[[1]][splitted[[1]] != ""]
    value <- as.numeric(value)
    data[i, 3:563] <- value
}

for(i in 1:7351){
  x_train[i,1] <- str_trim(x_train[i,1])
  splitted <- strsplit(x_train[i,1], " ")
  value <- splitted[[1]][splitted[[1]] != ""]
  value <- as.numeric(value)
  data[i+2946, 3:563] <- value
}



# descriptive activity name
for(i in 1:10297){
  activity_names <- c("WALKING", "WALKING_UPSTAIRS",
                      "WALKING_DOWNSTAIRS", "SITTING",
                      "STANDING", "LAYING")
  data[i,1] <- activity_names[suppressWarnings(as.numeric(data[i,1]))]
}



#descriptive variable names
variable_names <- read.csv("UCI HAR Dataset/features.txt", 
                           header = FALSE, sep="|")
variables <- c()
for(i in 1:561){
  variables[i] <- strsplit(variable_names[[1]][i], " ")[[1]][2]
}

names(data)[1] <- "activity"
names(data)[2] <- "subject"
names(data)[3:563] <- variables

#extracting only mean and std
meanorstd <- grepl("mean", names(data)) | grepl("std", names(data))
meanorstd[1] <- TRUE
meanorstd[2] <- TRUE

mean_std_data <- data[, meanorstd]


#grouping by activity and subject
group_data <- group_by(mean_std_data, activity, subject)
group_data

data_by_act_sub <- summarise_all(group_data, mean)
data_by_act_sub <- arrange(data_by_act_sub, activity, subject)
data_by_act_sub
