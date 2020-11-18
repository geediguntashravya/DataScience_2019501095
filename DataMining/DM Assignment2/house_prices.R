setwd("C:/Users/Shravya/OneDrive/Desktop/DataScience_2019501095/DataMining/DM Assignment2")
getwd()
cal<-read.csv("CA_house_prices.csv", header=FALSE)
ohio<-read.csv("OH_house_prices.csv", header = FALSE)
boxplot(cal$V1, ohio$V1, main="Shravya's Box Plots",col="blue",names=c("California", "Ohio"),ylab="Prices")

hist(cal$V1,breaks=seq(from=0,to=3500,by=500),col=c("brown"),main="Shravya's Histogram",xlab="California House Prices",ylab = "frequency")

plot(ecdf(cal[,1]),verticals= TRUE,do.p = FALSE,main ="ECDF for House Prices ",xlab="Prices",ylab="Frequency")
lines(ecdf(ohio[,1]),verticals= TRUE,do.p = FALSE,col.h="blue",col.v="red",lwd=4)
legend(2100,.6,c("CA Houses","OH Houses"), col=c("blue","red"),lwd=c(1,4))

