punif(45,0,60,lower.tail=FALSE)
punif(20,0,60,lower.tail=FALSE)-punif(30,0,60,lower.tail = FALSE)

dexp(3,1/2)
x_dex<-seq(0,5,by=0.1)
y_dexp<-dexp(x_dex,1/2)
plot(x_dex,y_dexp)
pexp(3,1/2)
y_pexp<-pexp(x_dex,1/2)
plot(x_dex,y_pexp)
x_sim<-rexp(1000,1/2)
plot(density(x_sim))

pgamma(1,2,1/3,lower.tail = FALSE)
qgamma(0.7,2,1/3)