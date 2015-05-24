#1
setwd("/Users/mafalda/Documents/Coursera R/Module 3 Clean data")
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url,destfile="./samsung.zip",method="curl")
unzip("./samsung.zip")
list.files()
setwd("./UCI HAR Dataset")
test_x<-read.table("./test/X_test.txt")
train_x<-read.table("./train/X_train.txt")
dataset<-rbind(test_x,train_x)

#2
feature<-read.table("./features.txt")
colnames(dataset)<-feature[,2]
mean_std<- grep("mean()|std()", feature[,2])
Extract<-dataset[,mean_std]

#3
test_y<-read.table("./test/y_test.txt")
train_y<-read.table("./train/y_train.txt")
label<-rbind(test_y,train_y)
activity_description <- read.table("./activity_labels.txt")[,2]
label[,2]<-activity_description[label[,1]]
colnames(label)<-c("activity_labels","activity_description")

#4
full<-cbind(label,Extract)

#5 
test_subject<-read.table("./test/subject_test.txt")
train_subject<-read.table("./train/subject_train.txt")
subject<-rbind(test_subject,train_subject)
colnames(subject)<-"subject"
full_subject<-cbind(subject,full)

library(reshape2)
melt <- melt(full_subject, id=c("subject", "activity_labels"), measure.vars=colnames(Extract))
tidy <- dcast(melt, subject+activity_labels ~ variable , mean)
write.table(tidy,file="./tidy.txt",row.name=F)
