c<-0 #count 초기값 설정
for(i in 1:10000){ #100000번 실행
  x<-sample(c(0:10000),1)/10000 #x좌표
  y<-sample(c(0:10000),1)/10000 #y좌표
  if((x^2+y^2)<=1){c[i]=1}else{c[i]=0} #1분위 원/4 안에들어올때 count 
}
sum(c)/10000*4


c/100000*4 #좌표가 원/4 안에 찍힐 확률*4배(원 전체)
pi #원주율과 비교