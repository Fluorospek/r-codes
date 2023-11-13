f<-function(x,y){
  2*(2*x+3*y)/5
}
I<-integral2(f,0,1,0,1)
if(I$Q){
  print('It is a joint density function')
} else{
  print('It is not a joint density function')
}

f1<-function(y){f(1,y)}
I1<-integral(f1,0,1)
I1

f2<-function(x){f(x,0)}
I2<-integral(f2,0,1)
I2

f4<-function(x,y){x*y*f(x,y)}
I4<-integral2(f4,0,1,0,1)
I4$Q

x<-c(0:3)
y<-c(0:2)
f<-function(x,y){(x+y)/30}
M<-matrix(c(f(0,0:2),f(1,0:2),f(2,0:2),f(3,0:2)),nrow=4,ncol=3,byrow=TRUE)
M

sum(M)

g<-apply(M,1,sum)
g

h<-apply(M,2,sum)
h

CP<-M[1,2]/h[2]
CP

e_x<-sum(x*g)
e_y<-sum(y*h)
e_x
e_y

f1<-function(x,y){x*y*(x+y)/30}
M1<-matrix(c(f1(0,0:2),f1(1,0:2),f1(2,0:2),f1(3,0:2)),nrow=4,ncol=3,byrow=TRUE)
e_xy<-sum(M1)
e_xy

e_x2<-sum(x*x*g)
e_x2
e_y2<-sum(y*y*h)
e_y2

var_x<-e_x2-(e_x)^2
var_x
var_y<-e_y2-(e_y)^2
var_y

cov_xy<-e_xy-(e_x*e_y)
cov_xy