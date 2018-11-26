library(leaflet)

pop <- read.csv("사상자_시도별.csv", header = T)
pop
lon <- pop$경도

lat <- pop$위도
c <- pop$사상자
loc <- pop$지역

df <- data.frame(loc,c,lon,lat)
df
leaflet(data=df) %>%
  addTiles() %>%
  addCircles(lng = ~lon,  #~lon : 컬럼네임 
             lat = ~lat,
             weight = 5, #선 두께
             radius = ~sqrt(c) * 1000, #크기
             popup = ~loc, #팝업기능 
             #fillColor = "red" #원안쪽 색상
             fillColor = "transparent",
             highlightOptions = highlightOptions( #강조옵션
               weight = 10,
               color = "brown",
               fillColor = "green"
             ),
             label = ~loc #마우스를 갖다 대기만해도 표시
  )
