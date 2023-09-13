#Q1
x<-c(5,10,15,20,25,30)
print(paste("Maximum value present in x is:",max(x)))
print(paste("Minimum value present in x is:",min(x)))

#Q2
fact<-function(n){
  if(n<0){
    stop("Number is negative")
  } else if(n==0){
    return(1)
  } else{
    fact=1
    for(i in 1:n){
      fact=fact*i
    }
    return(fact)
  }
}
n<-as.integer(readline(prompt="Enter a number:"))
print(paste("Factorial of",n,"is:",fact(n)))

#Q3
fibonacci<-function(n){
    first=0
    second=1
    fib<-c(first,second)
    if(n<=0){
        return("Invalid input")
    } else if(n==1){
        return(first) 
    } else if(n==2){
        return (c(first,second))
    } else{
        for(i in 3:n){
            nex<-first+second
            fib<-c(fib,nex)
            first=second
            second=nex
        }
    }
    return(fib)
}
suppressWarnings(n<-as.integer(readline(prompt="Enter a number:")))
ans<-fibonacci(n)
print(paste(n,"terms of the fibonacci series is:"))
print(ans)

#Q4
add<-function(x,y){
  return (x+y);
}

sub<-function(x,y){
  return (x-y);
}

mult<-function(x,y){
  return (x*y);
}

div<-function(x,y){
  if(y<=0){
    stop("divisor is smaller than 0");
  }
  return (x/y);
}

x=as.integer(readline(prompt = "Enter the first number"));
y=as.integer(readline(prompt = "Enter second number"));
print("1. +");
print("2. -");
print("3. *");
print("4. /");
op=as.integer(readline(prompt="Enter the operation to be performed"));
result=switch(
  op,
  "1"=add(x,y),
  "2"=sub(x,y),
  "3"=mult(x,y),
  "4"=div(x,y),
);
cat("Result: ",result)

#Q5
x<-c(2,5,1,0,10)
y<-c(3,1,10,0,5)
plot(x,main="Graph",type="l", xlab="X-Axis",ylab = "Y-Axis",col="green")
lines(y,type="l",col="blue",lwd=2,lty=2)

plot(c(1,5))

x<-c(10,30,70,20)
mylabel<-c("x","y","z","a")
colors<-c("red","blue","gold","green")
pie(x,init.angle = 40,label=mylabel,col=colors)
legend("bottomright",mylabel,fill=colors)

x<-c("a","b","c","d")
y<-c(2,10,12,5)
barplot(y,names.arg = x,density=30,width = c(3,2,4,5,1),horiz = TRUE)