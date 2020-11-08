setwd(D:/Final exam)
getwd()

data = read.csv("apriori_data.csv", header = TRUE);
View(data)
data$TID <- NULL
library(arules)

write.csv(data, "FreqItem.csv", quote = FALSE, row.names = TRUE)
txn = read.transactions("FreqItem.csv", sep=',', rm.duplicates = TRUE)
inspect(txn)

frequent_itemsets <- apriori(txn, parameter = list(sup = 0.03, conf = 0.5,target="frequent itemsets"))

inspect(sort(frequent_itemsets)[1:15])

itemFrequencyPlot(txn, topN = 5)