#Coursera Data Science Data Cleaning Course Final Project

##Purpose
This project takes as input accelerometer and gyroscope data from Samsung phones and summarizes that data.  

##Input Data
The input data can be found at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This data is a collection of features calculated from accelerometer and gyroscope data taken from subjects while they undertook certain activities (e.g. walking, standing, etc.) while wearing the phone.  

For more details of the input data sets see the /UCI/HAR/Dataset/README.txt file that is included in the zip file linked to above. 

##Data Cleaning & Summarization Process
The input data was cleaned and summarized using the run_Analysis.R script. Here is a summary of the steps taken (see the run_Analysis.R script for details)
1. input files are read  
2. testing and training data are combined  
3. column names are added to the data  
4. subset of the features are selected - means and stdev features only  
4. the activity and subject labels are added to the data.  
5. a summary table is produced, given the mean of each feature  
6. the summary table is ordered and column names are cleaned  

##Output File
The output data is in the file summary.csv.  See the summary_codebook.md file for an explanation of the data. 
