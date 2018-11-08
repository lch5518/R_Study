at<-ceiling(rexp(1,(1/3)));at  # 3의 지수분포 
st<-ceiling(rexp(1,(1/2)));st   # 2의 지수분포             
c <- at
out <- 0 #나가는시간
rate <- 0 #대기시간
rt <- 0 #atm에 와서 나가는 시간
for(i in 1:1000){                           
  chk<-c
  
  if(i == 1){
    out[i] <- c[i] + st[i]
    rt[i] <- out[i] - c[i]
  }  
  if(i == 2){                              
    while(chk<=540){
      at[i] <- ceiling(rexp(1,(1/3)))
      c[i]<-c[i-1]+ at[i] # 누적된 시간, 사람이 들어온 실제시간  
      st[i]<-ceiling(rexp(1,(1/2)))
      chk<-c[i]
      rate[i] <- if(c[i]>out[i-1]){0}else{out[i-1]-c[i]}
      out[i] <- c[i] + st[i] + rate[i]
      rt[i] <- out[i] - c[i]
      atm <- cbind(c,at,st,rate,rt,out) #table형식으로 만들어보자
      if(c[i]>=540){break} #9시간 = 540분 
      i<-i+1 
      
    }
    
  }
}

############

sim<-function(t1,t2){
  at<-ceiling(rexp(1,(1/t1)));at  
  st<-ceiling(rexp(1,(1/t2)));st
  c <- at
  out <- 0 #나가는시간
  rate <- 0 #대기시간
  rt <- 0 #atm에 와서 나가는 시간
  for(i in 1:1000){                           
    chk<-c
    
    if(i == 1){
      out[i] <- c[i] + st[i]
      rt[i] <- out[i] - c[i]
    }  
    if(i == 2){                              
      while(chk<=540){
        at[i] <- ceiling(rexp(1,(1/t1)))
        c[i]<-c[i-1]+ at[i] # 누적된 시간, 사람이 들어온 실제시간  
        st[i]<-ceiling(rexp(1,(1/t2)))
        chk<-c[i]
        rate[i] <- if(c[i]>out[i-1]){0}else{out[i-1]-c[i]}
        out[i] <- c[i] + st[i] + rate[i]
        rt[i] <- out[i] - c[i]
        atm <- cbind(c,at,st,rate,rt,out)
        if(c[i]>=540){break}
        i<-i+1 
        
      }
      
    }
  }
  #cat(mean(at),mean(st),mean(rate),mean(rt))
  return(mean(rate))
}

View(atm)


sim(2,1)

for(k in 1:1000){
  x[k] <- sim(2,1)
}
mean(x)

for(k in 1:1000){
  x[k] <- sim(3,2)
}
mean(x)

for(k in 1:1000){
  x[k] <- sim(4,3)
}
mean(x)
