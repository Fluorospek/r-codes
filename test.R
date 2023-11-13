x<-c(0,1,2,3,4)
p<-c(0.41,0.37,0.16,0.05,0.01)
sum(x*p)

func<-function(x){
  x*0.1*exp(-0.1*x)
}
print(integrate(func,0,Inf)$value)

hell<-function(x){
  12*x+2*(3-x)-18
}
x<-c(0,1,2,3)
p<-c(0.1,0.2,0.2,0.5)
vals<-c()
for(i in x){
  vals<-c(vals,hell(i))
}
sum(vals*p)

fm<-function(x){
  x*0.5*exp(-abs(x))
}
first_moment<-integrate(fm,1,10)$value
sm<-function(x){
  x^2*0.5*exp(-abs(x))
}
second_moment<-integrate(sm,1,10)$value
mean<-first_moment
variance<-second_moment-first_moment^2
print(mean)
print(variance)

fn<-function(x){
  (3/4)*(1/4)^(x-1)
}
x<-c(1,2,3,4,5)
y<-x^2
py<-f(y)
print(py)
expe<-sum(x*py)
sm<-sum(x^2*py)
variance<-expe-sm^2
print(expe)
print(sm)
print(variance)