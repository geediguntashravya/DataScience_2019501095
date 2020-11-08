setwd("D:/Final exam")
getwd()

data = read.csv("lenses.data.csv", header = FALSE, col.names = c("index", "age", "spectacle_prescription", "astigmatic", "tear_production_rate", "Class"))

data$index <- NULL

library(rpart)
y<-as.factor(data[,5])
x<-lensdata[,1:4]

mod<-rpart(y~.,x, parms = list(split = 'information'),
            control=rpart.control(minsplit=0,minbucket=0,cp=-1, maxcompete=0, maxsurrogate=0, usesurrogate=0, xval=0,maxdepth=5))


library(rpart.plot)
rpart.plot(mod)

info_gain <- sum(y==predict(mod,x,type="class"))/length(y)
info_gain

err <- 1-sum(y==predict(mod,x,type="class"))/length(y)
err