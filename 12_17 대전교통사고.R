pop_17<-read.csv("도로교통공단_전국_사망교통사고_2017.csv")
dg_17<-subset(pop_17,pop_17$발생지시도=="대전")

dg_16<-read.csv("도로교통공단_대전_사망교통사고_2016년.csv")

pop_15<-read.csv("2015_사망사고.csv")
dg_15<-subset(pop_15,pop_15$발생지시도=="대전")

pop_1214<-read.csv("2012_2014_교통사망사고정보.csv")
dg_1214<-subset(pop_1214,pop_1214$발생지시도=="대전")



fi_dg<-rbind(dg_1214,dg_15,dg_16,dg_17)


data1 <- data.frame(fi_dg)


install.packages('leaflet')
library(leaflet)
leaflet(data=fi_dg) %>%
  addTiles() %>%
  addCircles(lng = ~경도,  #~lon : 컬럼네임 
             lat = ~위도,
             weight = 2, #선 두께
             radius = ~sqrt(사상자수) * 150, #크기
             popup = ~발생지시군구, #팝업기능 
             fillColor = "red", #원안쪽 색상
             #fillColor = "transparent",
             highlightOptions = highlightOptions( #강조옵션
               weight = 10,
               color = "brown",
               fillColor = "green"
             ),
             label = ~발생지시군구 #마우스를 갖다 대기만해도 표시
  )


write.csv(fi_dg,file="K:/R/fi_dg.csv")

quakes

leaflet(fi_dg) %>% addTiles() %>% addMarkers(
  clusterOptions = markerClusterOptions(freezeAtZoom = 10)
)




