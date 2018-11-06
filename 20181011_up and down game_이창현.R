x<-sample(0:10,1)
i<-1
while (i<=5) {
  cat("맞출 숫자를 입력하세요","(",i,"번째시도)")
  g <- as.numeric(scan(what="char"))
  if(x==g){
    cat("정답입니다.");break
  }
  if(x>g){
    cat("업입니다.")
  } else{
    cat("다운입니다.")
  }
  i <- i + 1
  if(i>5){
    cat("실패","답은",i,"입니다")
  }
}

x<-sample(0:10,1)

lch <- function(x) {
i<-1
while (i<=5) {
  cat("맞출 숫자를 입력하세요","(",i,"번째시도)")
  g <- as.numeric(readline())
  if(x==g){
    cat("정답입니다.");break
  }
  if(x>g){
    cat("업입니다.")
  } else{
    cat("다운입니다.")
  }
  i <- i + 1
  if(i>5){
    cat("실패","답은",i,"입니다")
  }
}
}


lch(x)


for(i in 1:5)
{
  cat("맞출 숫자를 입력하세요","(",i,"번째시도)")
  g <- as.numeric(readline())
  if(x==g){
    cat("정답입니다.");break
  }
  if(x>g){
    cat("업입니다.")
  } else{
    cat("다운입니다.")
  }
  i <- i + 1
  if(i>5){
    cat("실패","답은",i,"입니다")
  }
}
