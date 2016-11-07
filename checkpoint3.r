library(RSentiment)
# Read CSV into R
MyData <- read.csv(file="~/Desktop/PredictingTheDow/stocknews/full-table.csv", header=TRUE, sep=",")
summary(MyData)
sentiment=MyData[,10:34]
summary(sentiment)
sentiment[1,1]
calculate_score(sentiment[1,1])
colnames(sentiment)
dim(sentiment)[2]
mat<-matrix(nrow=1989, ncol=25)
sentimentResult=mat
for(i in 1:dim(sentiment)[1]){
  for(j in 1:dim(sentiment)[2]){
    #print(i)
    #print(j)
    #print(calculate_score(sentiment[i,j]))
    sentimentResult[i,j]=calculate_score(sentiment[i,j])
    }
}
  #print(j)
