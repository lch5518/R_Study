#소수구하기함수
prime <- function(n){
  chk<-0 #chk 초기값 0으로 설정
  if(n==1){chk=1}
  for(i in 2:(floor(sqrt(n-1))+1) ){ #i는 2부터 k-1까지 1씩 증가
    if(n%%i==0 ) {chk<-1} #약수가 생기면 chk에 1
  }
  if(chk==0 | n==2) {cat("prime");return(1)}
  else {return(0)}
}

e <- readLines("http://wolfpack.hnu.ac.kr/Stat_Notes/softwares/about_R/exp.txt")
e1 <- substr(b,3,77)
e2 <- paste0(b1[1],b1[2],seq="")
e2


x<- c(1)
while(x<=120){
  y <- as.numeric(substr(e2,x,x+9))
  if(prime(y)==1){cat(" 최초소수",y)}
  x<- x+1
}

