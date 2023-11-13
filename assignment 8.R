data<-read.csv(file.choose())
dim(data)
head(data)
meann<-mean(data$Wall.Thickness)
hist(data$Wall.Thickness)
abline(v=meann,col="red")

observedMean<-c()
set.seed(4)
for(x in 1:1000){
  data_s1<-data[sample(1:nrow(data),10),]
  observedMean<-append(observedMean,mean(data_s1))
}
print(observedMean)
hist(observedMean)
abline(v=mean(observedMean),col="green")

observedMean<-c()
set.seed(4)
for(x in 1:50){
  data_s1<-data[sample(1:nrow(data),10),]
  observedMean<-append(observedMean,mean(data_s1))
}
print(observedMean)
hist(observedMean)
abline(v=mean(observedMean),col="green")