
fn<-sample(1:9,1)
sn<-sample(1:9,1)
while(fn==sn){
  fn<-sample(1:9,1)
  sn<-sample(1:9,1)
}
fn;sn

for(i in 1:5){
  s <- 0
  b <- 0
  cat("첫번째자리 숫자를 입력하시오")
  x <- scan()
  cat("두번째자리 숫자를 입력하시오")
  y <- scan()
  if(x == fn & y == sn){
    s <- s+2
  }
  if(x == fn & y != sn){
    s <- s+1
  }
  if(x != fn & y == sn){
    s <- s+1
  }
  
  if(x == sn & y == fn){
    b <- b+2
  }
  
  if(x == sn & y != fn){
    b <- b+1
  }
  
  if(x != sn & y == fn){
    b <- b+1
  }
  
  if(s == 2){
    cat("투스트라이크 Game Over");break
  }
  if(b == 2){
    cat("two ball")
  }
  if(s == 1 & b == 1){
    cat("원 스트라이크 원볼")
  }
  if(s == 1 & b == 0){
    cat("원 스트라이크")
  }
  if(s == 0 & b == 1){
    cat("원 볼")
  }
  if(s == 0 & b == 0){
    cat("x")
  }
  
}



