setwd("C:/Users/Shravya/OneDrive/Desktop/DataScience_2019501095/DataMining/DM Assignment2")
getwd()
data<-read.csv("twomillion.csv",header=FALSE)
sampledata<-sample(data[,1],10000,replace=TRUE)

mean(sampledata)
max(sampledata)
min(sampledata)
quantile(sampledata,.25)

summary(data)
mean(data$V1)
max(data$V1)
var(data$V1)
quantile(data$V1)

write.csv(sampledata, file = "sample_data.csv")

str(data)