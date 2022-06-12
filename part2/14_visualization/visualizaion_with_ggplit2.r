install.packages("ggplot2")
library(ggplot2)

# ggplot2의 대표적 구성요소
  ## data set (시각화 할 데이터 셋), mapping(데이터를 매핑[삭제가능])
  ## aes (데이터 매핑 시 색상, 크기와 같은 외적 요소 지정), geoms(점, 선 등의 모양을 지정할 수 있음)
  ## color (색상), pch(모양), size(크기)

# ggplot2 사용방법
  ## 데이터 셋 설정
  ## x축과 y축의 mapping 값 설정
  ## 필요에 따라 옵션 추가
  ggplot(data=cars)
  ggplot(data=cars,aes(x= speed, y=dist))
  ggplot(data=cars,aes(x= speed, y=dist))+geom_point()
  ggplot(data=cars,aes(x= speed, y=dist))+geom_point(color="red",pch=5,size=2)

# 데이터 셋 결정, x/y축 매핑
set_dataset <- ggplot(data=pressure, aes(x=temperature, y=pressure))
set_dataset
# 점과 선 추가
insert_line_dot <- set_dataset+geom_point()
insert_line_dot
#점의 색 변경
change_color <- set_dataset+geom_point(color="red")
change_color
#점과 선의 색 및 굵기 변경
change_feature <- set_dataset+geom_point(color="red") + geom_line(color="skyblue",size=2)
change_feature
#선의 모양 변경
insert_line_dot + geom_smooth()
#옵션 추가

set_dataset+geom_line(color="skyblue",size=2)+geom_point(color="red")   + ggtitle("pressure_test")+xlab("온도")+ylab("압력") +geom_smooth()
