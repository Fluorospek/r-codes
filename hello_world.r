y<-1:20
y

y<-seq(from=2,to=20,by=0.25)
y

y<-seq(20,1,-2)
y

y<-rep(1,10)

1:10*c(-1,1)

1:3*1:7

x<-c(1,3,5,10)
length(x)
x[2:length(x)]

matrix(2:7,nrow=2,ncol=2)

A=matrix(2:10,nrow=3,ncol=3,byrow=TRUE)
t(A)
det(A)
solve(A)

outer(1:3,1:3,"+")