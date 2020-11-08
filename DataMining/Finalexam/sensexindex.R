setwd("D:Final exam")
getwd()

data = read.csv("BSE_Sensex_Index.csv",header = FALSE)

data$diffV2 <- c(0, diff(data$V2))
data$diffV3 <- c(0, diff(data$V3))
data$diffV4 <- c(0, diff(data$V4))
data$diffV5 <- c(0, diff(data$V5))
data$diffV6 <- c(0, diff(data$V6))
data$diffV7 <- c(0, diff(data$V7))


sample1 = sample(seq(1,length(data$V2)),1000,replace = T)
sample2 = sample(seq(1,length(data$V2)),3000,replace = T)


#Column - 8 (V2)
sampleV2_1 = data[sample1,8]
mean(sampleV2_1)
max(sampleV2_1)
var(sampleV2_1)
quantile(sampleV2_1,.25)

sampleV2_2 = data[sample2,8]
mean(sampleV2_2)
max(sampleV2_2)
var(sampleV2_2)
quantile(sampleV2_2,.25)

#Column - 9 (V3)
sampleV3_1 = data[sample1,9]
mean(sampleV3_1)
max(sampleV3_1)
var(sampleV3_1)
quantile(sampleV3_1,.25)

sampleV3_2 = data[sample2,9]
mean(sampleV3_2)
max(sampleV3_2)
var(sampleV3_2)
quantile(sampleV3_2,.25)


#Column - 10 (V4)
sampleV4_1 = data[sample1,10]
mean(sampleV4_1)
max(sampleV4_1)
var(sampleV4_1)
quantile(sampleV4_1,.25)

sampleV4_2 = data[sample2,10]
mean(sampleV4_2)
max(sampleV4_2)
var(sampleV4_2)
quantile(sampleV4_2,.25)


#Column - 11 (V5)
sampleV5_1 = data[sample1,11]
mean(sampleV5_1)
max(sampleV5_1)
var(sampleV5_1)
quantile(sampleV5_1,.25)

sampleV5_2 = data[sample2,11]
mean(sampleV5_2)
max(sampleV5_2)
var(sampleV5_2)
quantile(sampleV5_2,.25)

#Column - 12 (V6)
sampleV6_1 = data[sample1,12]
mean(sampleV6_1)
max(sampleV6_1)
var(sampleV6_1)
quantile(sampleV6_1,.25)

sampleV6_2 = data[sample2,12]
mean(sampleV6_2)
max(sampleV6_2)
var(sampleV6_2)
quantile(sampleV6_2,.25)


#Column - 13 (V7)
sampleV7_1 = data[sample1,13]
mean(sampleV7_1)
max(sampleV7_1)
var(sampleV7_1)
quantile(sampleV7_1,.25)

sampleV7_2 = data[sample2,13]
mean(sampleV7_2)
max(sampleV7_2)
var(sampleV7_2)
quantile(sampleV7_2,.25)



#Column 8
mean(data$diffV2)
max(data$diffV2)
var(data$diffV2)
quantile(data$diffV2,.25)
#how much they differ?
abs(mean(sampleV2_1)-mean(data$diffV2))
abs(max(sampleV2_1)-max(data$diffV2))
abs(var(sampleV2_1)-var(data$diffV2))
abs(quantile(sampleV2_1,.25)-quantile(data$diffV2,.25))


abs(mean(sampleV2_2)-mean(data$diffV2))
abs(max(sampleV2_2)-max(data$diffV2))
abs(var(sampleV2_2)-var(data$diffV2))
abs(quantile(sampleV2_2,.25)-quantile(data$diffV2,.25))


#Column 9
mean(data$diffV3)
max(data$diffV3)
var(data$diffV3)
quantile(data$diffV3,.25)
#how much they differ?
abs(mean(sampleV3_1)-mean(data$diffV3))
abs(max(sampleV3_1)-max(data$diffV3))
abs(var(sampleV3_1)-var(data$diffV3))
abs(quantile(sampleV3_1,.25)-quantile(data$diffV3,.25))


abs(mean(sampleV3_2)-mean(data$diffV3))
abs(max(sampleV3_2)-max(data$diffV3))
abs(var(sampleV3_2)-var(data$diffV3))
abs(quantile(sampleV3_2,.25)-quantile(data$diffV3,.25))


#Column 10
mean(data$diffV4)
max(data$diffV4)
var(data$diffV4)
quantile(data$diffV4,.25)
#how much they differ?
abs(mean(sampleV4_1)-mean(data$diffV4))
abs(max(sampleV4_1)-max(data$diffV4))
abs(var(sampleV4_1)-var(data$diffV4))
abs(quantile(sampleV4_1,.25)-quantile(data$diffV4,.25))


abs(mean(sampleV4_2)-mean(data$diffV4))
abs(max(sampleV4_2)-max(data$diffV4))
abs(var(sampleV4_2)-var(data$diffV4))
abs(quantile(sampleV4_2,.25)-quantile(data$diffV4,.25))


#Column 11
mean(data$diffV5)
max(data$diffV5)
var(data$diffV5)
quantile(data$diffV5,.25)
#how much they differ?
abs(mean(sampleV5_1)-mean(data$diffV5))
abs(max(sampleV5_1)-max(data$diffV5))
abs(var(sampleV5_1)-var(data$diffV5))
abs(quantile(sampleV5_1,.25)-quantile(data$diffV5,.25))


abs(mean(sampleV5_2)-mean(data$diffV5))
abs(max(sampleV5_2)-max(data$diffV5))
abs(var(sampleV5_2)-var(data$diffV5))
abs(quantile(sampleV5_2,.25)-quantile(data$diffV5,.25))


#Column 12
mean(data$diffV6)
max(data$diffV6)
var(data$diffV6)
quantile(data$diffV6,.25)
#how much they differ?
abs(mean(sampleV6_1)-mean(data$diffV6))
abs(max(sampleV6_1)-max(data$diffV6))
abs(var(sampleV6_1)-var(data$diffV6))
abs(quantile(sampleV6_1,.25)-quantile(data$diffV6,.25))


abs(mean(sampleV6_2)-mean(data$diffV6))
abs(max(sampleV6_2)-max(data$diffV6))
abs(var(sampleV6_2)-var(data$diffV6))
abs(quantile(sampleV6_2,.25)-quantile(data$diffV6,.25))

#Column 13
mean(data$diffV7)
max(data$diffV7)
var(data$diffV7)
quantile(data$diffV7,.25)
#how much they differ?
abs(mean(sampleV7_1)-mean(data$diffV7))
abs(max(sampleV7_1)-max(data$diffV7))
abs(var(sampleV7_1)-var(data$diffV7))
abs(quantile(sampleV7_1,.25)-quantile(data$diffV7,.25))


abs(mean(sampleV7_2)-mean(data$diffV7))
abs(max(sampleV7_2)-max(data$diffV7))
abs(var(sampleV7_2)-var(data$diffV7))
abs(quantile(sampleV7_2,.25)-quantile(data$diffV7,.25))


boxplot(data$diffV2,
        data$diffV3,
        data$diffV4,
        data$diffV5,
        data$diffV6,
        data$diffV7
        ,col = 'blue', main = 'Boxplot', names=c("Open","High", "Low", "Close", "volume", "adj"))


data$c = as.numeric(data$V4)

hist(data$c,breaks=seq(0,20000,by=2000),col='blue',xlab = "Close",ylab = "Frequency",main = "Histogram Plot")