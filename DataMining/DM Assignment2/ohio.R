setwd("C:/Users/Shravya/OneDrive/Desktop/DataScience_2019501095/DataMining/DM Assignment2")
getwd()
ohio<-read.csv("OH_house_prices.csv", header=FALSE)
median(ohio[,1])
mean(ohio[,1])

median(ohio[,1]+10) 

median(2*ohio[,1])