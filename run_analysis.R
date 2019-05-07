#### Merges the training and the test sets to create one data set
test<-read.table("./X_test.txt")
train<-read.table("./X_train.txt")

names(test);names(train);

mergedData=merge(train,test,all=TRUE)

head(mergedData,1)


#### Extract only the measurements on the mean and standard deviation for 
#### each measurement

mergedData2<-mergedData[,c(1:6,41:46,81:86,121:126,161:166,201,202,
                           214,215,227,228,240,241,253,254,266:271,
                           345:350,424:429,503,504,516,517,529,530,
                           542,543)]


#### uses descriptive activity names to name the activities in the data set
features<-read.table("features.txt")
features$V2<-as.character(features$V2)



#### appropriately labels the data set with descriptive variable names
colnames(mergedData)=features$V2



#### from the date set in step 4, creates a second independent tidy data 
#### set with the average of each variable for each activity and each subject
colMeans(mergedData2)
















































