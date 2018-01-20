
# 0 Reads files from both sets assuming dataset in current working directory------
actLabels<-read.table("./activity_labels.txt")
features<-read.table("./features.txt")

subTest <- read.table("./test/subject_test.txt")
measureTest <- read.table("./test/x_test.txt")
actTest <- read.table("./test/y_test.txt")

subTrain <- read.table("./train/subject_train.txt")
measureTrain <- read.table("./train/x_train.txt") 
actTrain <- read.table("./train/y_train.txt")

# 1 Renames labels before merging---------------------------------------------
library(dplyr)

colnames(actLabels) <- c("code", "action")
subTest <- rename(subTest, subject = V1)
subTrain <- rename(subTrain, subject = V1)
actTest <- rename(actTest, code = V1)
actTrain <- rename(actTrain, code = V1)

# 2 Binds columns for each group and then combines the groups together---------
test <- cbind(subTest, actTest)
train <- cbind(subTrain, actTrain)
part1 <- rbind(test,train)

# 3 Merges action labels, action codes and subjects, then changes them to lowercase----
part1 <- merge(part1, actLabels, by=("code"))
part1$action <- tolower(part1$action)

# 4 Binds measurements columns for each group and labels the variable names----
part2 <- rbind(measureTest, measureTrain)
colnames(part2) <- features$V2

# 5 Merges resulting parts and extracts mean and std related variables-----
library(tidyr)

wholeSet <- cbind(part1,part2)
wholeSet <- wholeSet[,-1]
wholeSet<- select(wholeSet,
                  contains("subject"), contains("action"),
                  contains("mean"), contains("std"))

# 6 Generates tidy dataset-----
tidyData <- wholeSet  %>% 
        group_by(subject,action) %>% 
        summarize_all(funs(mean))

# 7 Gives appropriate descriptive variable names to each variable ----
names <- names(tidyData)
names <- gsub("^t", "time", names)
names <- gsub("^f", "freq", names)
names <- gsub("\\(|\\)|,|Freq", "", names)
names <- gsub("yMean", "y-mean", names)
names <- tolower(names)
colnames(tidyData) <- names

# 8 Converts subjects and actions into factors ----
tidyData$action <- gsub("_", "", tidyData$action)
tidyData$subject <- as.factor(tidyData$subject)
tidyData$action <- as.factor(tidyData$action)

# 9 Outputs tidy dataset
write.table(tidyData,file="tidyDataset.txt",row.names = FALSE)