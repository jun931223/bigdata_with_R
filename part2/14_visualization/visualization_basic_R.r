# 산점도 그래프 plot
x <- cars$dist
plot(x)
# abline(선), rect(사각형), arrows(화살표), text(글자), title(제목)
abline(h=50)  
rect(1,1,50,50)
arrows(1,1,50,50)
text(30,30,"this line is Text")
title("up","buttom")

# R에서 기본적으로 제공되는 그래픽 함수
test.1 <- c("A","A","B","B","AB","AB","AB","O","O","B","B","B")
analysis_test.1 <- table(test.1)
analysis_test.1
test.2 <- c(1,10,2)
test.3 <- matrix(1:4,nrow=2)
test.4 <- cars[,1]$speed
  # 막대그래프 barplot(data,options) 
  ## col(막대 색), legend(범례), names(막대의 라벨), width(각 막대의 너비), main(타이틀)
  ## space(각 막대 사이의 간격), beside(TRUE를 지정하면 각각 값마다 막대를 그림), horiz(수평 막대그래프)
  
  #수직 막대그래프
  barplot(analysis_test.1, main= "blood type") 
  #수평 막대그래프
  barplot(test.2,horiz =T) 
  #각각의 값마다 그래프 생성
  barplot(test.3,beside=T,names=c(1,2),col=c("skyblue","pink"))
  
  # 원그래프 pie(data, options)
    ## col (각 원의 색), labels(각 파이의 이름), radius(전체 파이의 크기) 
    ## clockwise(회전방향, F면 반시계), init.angle(시작 지점 각도)
  pie(analysis_test.1, main="boold type")
  pie(test.2,radius=1)
  pie(test.2,radius=1,init.angle=90)
  pie(test.2, radius = 1,init.angle=90, col=rainbow(length(test.2)),label=c("p1","p2","p3"))
  
  # 히스토그램 hist(data, option)
    ## xlab(x축 레이블), ylab(y축 레이블), border (막대 테두리 색)
    ## col(막대 색), breaks(막대 개수 조절)
  hist(analysis_test.1, main="boold type")
  hist(test.4,main="Speed",xlab="Speed",ylab="preq",border="red",col="skyblue",breaks=8)
  
  # 상자그림 boxplot(data, option)
    ## col(박스 내부 색깔), names(각 막대의 이름 지정), width(박스의 폭)
    ## notch(T일 경우 상자의 허리부분을 가늘게 표시), horizontal(T일 경우 상자를 수평으로 그림)
 test.5 <- c(10,20,30,40,50)
 boxplot(test.5)

 x<- c(27,30,32,40)
 y<- c(10,20,30,40)
 z<- c(40,45,48,54)
 aGraph <- boxplot(x,y,z,col=c("red","blue","yellow"),names=c("pary1","part2","part3"))
 bGraph <- boxplot(x,y,z,col=c("red","blue","yellow"),names=c("pary1","part2","part3"),notch=T,horizontal=T)

#그래프의 배열화
# 그래프를 매번 새로운 창에 그리지 않고, 한 장에 그릴 수 있도록 배열화  함
  ## par() 그래픽 파라미터 지정, par(mfrow=c(x,y)) 그래프를 x개의 행, y개의 열로 배열
  colnames(iris)
  par(mfrow=c(1,2))
  plot(iris$Sepal.Length)
  plot(iris$Petal.Length)