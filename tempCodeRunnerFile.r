fibonacci<-function(n){
    first=0
    second=1
    if(n<=0){
        return("Invalid input")
    } else if(n==1){
        return(first) 
    } else if(n==2){
        return (c(first,second))
    } else{
        fib<-c(first,second)
        for(i in 3:n){
            next=first+second
            fib<-c(fib,next)
            first=second
            second=next
        }
        return(fib)
    }
}
n<-as.integer(readline(prompt="Enter a number:"))
print(paste("Fibonacci series upto",n,"is:",fibonacci(n)))