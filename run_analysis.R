#read files - commented out for now to avoid reloading large files
xTest <- read.delim("test/X_test.txt", header = FALSE, sep = "")
xTrain <- read.delim("train/X_train.txt", header = FALSE, sep = "")
features <- read.delim("features.txt", header = FALSE, sep = "")
yTest <- read.delim("test/y_test.txt", header = FALSE, sep = "")
yTrain <- read.delim("train/y_train.txt", header = FALSE, sep = "")
yLabels <- read.delim("activity_labels.txt", header = FALSE, sep = "")
sTest <- read.delim("test/subject_test.txt", header = FALSE, sep = "")
sTrain <- read.delim("train/subject_train.txt", header = FALSE, sep = "")


#combine the test and train dataframes
x <- rbind(xTest, xTrain)

#add column names
feature_names <- features[,2]
colnames(x)<-feature_names

#reduce x to include only columns with mean and std
meanStdCols <- grep("mean|std", feature_names)
x <- x[,meanStdCols]

#add activities
allY <- rbind(yTest, yTrain)
colnames(allY) <- "activityIndex"
colnames(yLabels) <- c("activityIndex", "activity")
x <- cbind(x,allY)
x <- merge(x, yLabels, sort=FALSE)
x$activityIndex <- NULL

#add subjects
allS <- rbind(sTest, sTrain)
colnames(allS) <- "subject"
x<-cbind(x,allS)

#create summary table
x_gr <- group_by(x, activity, subject)
x_sum <- summarize_each(x_gr, funs(mean))

#tidy up - sort properly
x_sum <- arrange(x_sum, activity, subject)

#tidy up - improve the readability of the column names a little bit
xColNames <- colnames(x)
xRevisedColNames <- gsub("\\(\\)","",xColNames)
xRevisedColNames <- gsub("-","_",xRevisedColNames)
addMean <- function(x) paste0("mean_of_", x)
xRevisedColNames <- lapply(colnames(x_sum), addMean)
xRevisedColNames[[1]] = "activity"
xRevisedColNames[[2]] = "subject"
colnames(x_sum) <- xRevisedColNames

