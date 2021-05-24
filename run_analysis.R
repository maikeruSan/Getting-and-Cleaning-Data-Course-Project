library(data.table)
library(dplyr)

ACTIVITY <- "Activity"
ACTIVITY_LABEL <- "ActivityLabel"
SUBJECT <- "Identifier"

getDataset<- function(){
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","ds.zip")
  unziped <- unzip("ds.zip")
  if(length(unziped)>0){
    print(unziped)
    file.remove("ds.zip")
  }
}

features <- function(){
  fs <- read.table("UCI HAR Dataset/features.txt",col.names = c("numOfFeatue","feature"))
  fs$feature <- gsub("mean\\(\\)","MEAN",fs$feature)
  fs$feature <- gsub("std\\(\\)","STD",fs$feature)
  fs$feature <- gsub("\\(\\)","",fs$feature)
  fs$feature <- gsub("[0-9\\,0-9]","",fs$feature)
  fs$feature <- gsub("-", "_",fs$feature)
  fs$feature <- gsub("^f", "Frequency",fs$feature)
  fs$feature <- gsub("^t", "Time",fs$feature)
  fs$feature <- gsub("Acc", "Aceleration",fs$feature)
  fs$feature <- gsub("Gyro", "Gyroscope",fs$feature)
  fs$feature <- gsub("Mag", "Magnitude",fs$feature)
  fs$feature <- gsub("BodyBody", "Body",fs$feature)
  fs$feature <- gsub("$_mean", "",fs$feature)
  return(fs$feature)
}

bind_X <- function(col_names){
  X_train<- read.table("UCI HAR Dataset/train/X_train.txt",col.names = col_names)
  X_test<- read.table("UCI HAR Dataset/test/X_test.txt",col.names = col_names)
  bind_rows(X_train,X_test)
}

bind_y <- function(col_names){
  y_train <- read.table("UCI HAR Dataset/train/y_train.txt",col.names =col_names)
  y_test <- read.table("UCI HAR Dataset/test/y_test.txt",col.names = col_names)
  bind_rows(y_train,y_test)
}

bind_subject <- function(col_names){
  subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt",col.names =col_names)
  subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt",col.names =col_names)
  bind_rows(subject_train,subject_test)
}

main <- function(){

  # Download then Unzip dataset into a folder from the URL automatically.  
  getDataset()
  
  Xys <-{
    function(){
     
      # Bind(Row) X_train and X_test into a data.table object called X, 
      # assign descriptive and human readable variable(column) names to X.
      xcols_name <- features()
      X<-bind_X(xcols_name)
      # Bind(Row) y_train and y_test into a data.table object called y.
      y<-bind_y(c(ACTIVITY))
      # Bind(Row) subject_train and subject_tess into a data.table object called subject.
      subject<-bind_subject(c(SUBJECT)) 
      
      # Bind(Colnum) X,y, and subject called X_y_subjects. 
      # Preserve measurement variables that measured on mean and standard deviation only.
      X_y_subjects<- bind_cols(X,y,subject) 
      X_y_subjects %>% select(contains(SUBJECT),
                              contains(ACTIVITY),
                              contains("MEAN",ignore.case = FALSE),
                              contains("STD",ignore.case = FALSE))
    }
  }()
  
  activities <-{
    function(){
      # Join X_y_subjects and activities_lables by activitiy key (1,2,3,4,5,6).
      activityLabel <- read.table("UCI HAR Dataset/activity_labels.txt",
                                  col.names = c(ACTIVITY,ACTIVITY_LABEL))
      inner_join(Xys,activityLabel,by=ACTIVITY)
    }
  }()
  
  output<-{
    function(){
      # Group rows that with same Identifier and Activity,
      # mean estimate each measurement variable of the group.
      output<- activities %>% group_by(Identifier,
                                       ActivityLabel)  %>% summarise_each(list(mean=mean),
                                                                          contains("MEAN"),
                                                                          contains("STD")) %>% arrange(Identifier,
                                                                                                       ActivityLabel)
      # Remove redundant piece "_mean" because all of the measurement variables are mean estimated.
      names(output)<- gsub("_mean","",names(output))
      output
    }
  }()
  
  # Save the summarised outcome to tidy.txt
  write.csv(output,"output/tidy.txt",row.names = FALSE)
  output
}

main()
