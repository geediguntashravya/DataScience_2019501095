setwd("C:/Users/Shravya/OneDrive/Desktop/DataScience_2019501095/DataMining/DM Assignment2")
getwd()
data<-read.csv("football.csv",header=TRUE)
head(data)
plot(data[,2],data[,3],xlim=c(0,12),ylim=c(0,12),pch=15,col="red",xlab="2003 Wins",ylab="2004 Wins",main="Shravya")

cor(data[,2],data[,3]) 

cor(data[,2],data[,3]+10) 

cor(data[,2],data[,3]*2)

cor(data[,2],data[,3]*-2) 