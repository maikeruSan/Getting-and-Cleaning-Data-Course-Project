# Getting and Cleaning Data Course Project

## Table Of Contents
*   [General info](#general-info)
*   [Dataset](#dataset)
*   [Requirements](#requirements)
*   [How does this work?](#how-does-this-work)

## General Info 
This repo is a project that aims to demonstrate writing an R script and implementing 3rd-party libraries to extract, manuplate, and clean a data set.

# Dataset
##### "Human Activity Recognition Using Smartphones Data" 
It is the original dataset source also the target of this project's data engineering process. You can find the full description and download the zipped dataset from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

## Requirements
* R version 4.0.*
* R Studio(Recommended)
* data.table
* dplyr

## How does this work
First thing first, make sure all the dependencies packages have been installed in your R environment.
Open "run_analysis.R" in R studio, press the Source button to execute the script file , procedures in the script file invoked one after another by the main() function.  The ordered steps are following:
1.  Download then Unzip dataset into a folder from the URL automatically.
2.  Bind(Row) X_train and X_test into a data.table object called X, assign descriptive and human readable variable(column) names to X.
3.  Bind(Row) y_train and y_test into a data.table object called y.
4.  Bind(Row) subject_train and subject_tess into a data.table object called subject.
5.  Bind(Colnum) X,y, and subject called X_y_subjects. Preserve measurement variables that measured on mean and standard deviation only.
6.  Join X_y_subjects and activities_lables by activitiy key (1,2,3,4,5,6).
7.  Group rows that with same Identifier and Activity, mean estimate each measurement variable of the group.
8.  Save the summarized outcome to a csv file called "tidy.csv".
