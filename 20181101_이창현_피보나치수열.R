Fib <- function(n){
  x <- 0
  for(i in 3:n){
    x[1] <- 1
    x[2] <- 1
    x[i] <- x[i-1] + x[i-2]
  }
  print(x)
}
Fib(20)
Fib(20)[-1]
d <- data.frame(cbind(Fib(20), Fib(21)[-1],seq(1:20)))
d
plot(d[,3],d[,2]/d[,1], type = "l")

?plot
