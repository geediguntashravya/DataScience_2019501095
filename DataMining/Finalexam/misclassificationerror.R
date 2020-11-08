setwd("D:/Final exam")
getwd()

data = read.csv("liver_data.csv", header = FALSE, col.names = c("1", "2", "3", "4", "5", "6", "7"))


x = data[,1:5]
y = data[,6]
fit = kmeans(x,4)
library(class)
knnfit = knn(fit$centers,x,as.factor(c(-2,-1,1,2)))
err = 1-sum(knnfit == y)/length(y)
err