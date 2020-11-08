setwd("D:/Final exam")
getwd()

data = read.csv("liver_data.csv", header = FALSE, col.names = c("1", "2", "3", "4", "5", "6", "7"))

x<-data[,1:2]

plot(x,pch=19,xlab=expression(x[1]),ylab=expression(x[2]))

fit<-kmeans(x, 4)
points(fit$centers,pch=19,col="blue",cex=2)

library(class)
knnfit<-knn(fit$centers,x,as.factor(c(-1,1)))
points(x,col=1+1*as.numeric(knnfit),pch=19)