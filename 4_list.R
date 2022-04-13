## 1. 리스트의 개념과 활용
# 벡터는 한 가지 자료형만 저장
# 리스트는 서로 다른 자료형을 저장 및 활용

first <- list(num=1,name="Yi",married=F)
first
# 리스트의 요소를 호출할 때에는 list$인자
first$num
first$married

#리스트 안에는 벡터를 포함할 수 있다.
vector <- c(1:2)
second <- list(name="vector",vec=vector,length=length(vector))
second

#실습1
name <- c("Kim hanyang","lee hanyang", "choi hanyang")
dept <- "computer science"
tot_sc <- c(120,115,130)
cs_hw1 <- c(10,10,25,15)
cs_hw2 <- rep(10,times=4)
cs_hw3 <- rep(20,times=4)
st.info1 <- list(name=name[1],dept=dept,tot_sc=tot_sc[1],score=cs_hw1)
st.info2 <- list(name=name[2],dept=dept,tot_sc=tot_sc[2],score=cs_hw2)
st.info3 <- list(name=name[3],dept=dept,tot_sc=tot_sc[3],score=cs_hw3)
st.info2

##2. 팩터 -> 지정된 문자값들만 사용하고자 할 때 사용
# 분반중 선택 가능한 분반은 A,B,C
# 학과 중 선택가능 학과는 컴공,응용,해킹과 이다
# 과목중 선택가능 과목은 C Java C++
# 이외 선택 불가
class <-c("A","B","C")
major <-c("컴공","응용","해킹")
sub <- c("C","Java","C++")
new_class<-factor(class)
# 벡터는 편집이 가능, 펙터는 불가능
class[4] <- "D"
new_class[4] <- "D" # 에러출력

# 팩터활용 함수
# levels() -> 팩터에 저장된 값의 종류를 중복 없이 출력
levels(new_class)[4] <- "D"
new_class # levels에는 값이 추가 하지만 상위 값은 NA로 표현

# as.integer() -> 팩터의 문자값을 숫자로 바꾸어 출력
as.integer(new_class)

# 연습문제1
a <- 1
b <- 2
ans.1 <- a+b
ans.1
# 연습문제2
r <- 10
ans.2 <- pi * r^2
ans.2

# 연습문제3
q <- c(1,2,3)
w <- 10
q[4] <- w 

# 연습문제4
ex.1 <- 1:10
ex.1[9]
ex.1[-ex.1[3]] #ex.1[-3]
ex.1[seq(1,10,2)]
ex.1[-seq(1,10,2)] #ex.1[1%%2 == 0]

# 연습문제5
ex.2 <- c(10:20)
ex.3 <- c(30:40)
ex.2 +ex.3
ex.2 -ex.3
ex.2 /ex.3
ex.2 *ex.3

mean(ex.2)
median(ex.3)
abs(mean(ex.2)-mean(ex.3))
sort(ex.3,decreasing = T)
# 연습문제4
# 연습문제5
ex.4 <-c(100:200)

sum(ex.4>110)

#---
ex.4[seq(1,5,1)] # ex.4[ex.4 < 105]
length(ex.4[seq(1,5,1)]) # length(ex.4[ex.4 < 105])
ex.4[-seq(1,11,1)] # 
length(ex.4[-seq(1,11,1)])
sum(ex.4[-seq(1,11,1)]) # sum(ex.4 < 105])
sum(ex.4[seq(82,100,1)]) # sum(ex.4[ex.4 < 105])
sum(ex.4 <110)
# 연습문제6
ex.4[ex.4%%3 == 2]
ex.4[seq(52,90,1)] # ex.4[ex.4 > 150 & ex.4 <190]
length(ex.4[seq(52,90,1)]) # ex.4[ex.4 > 150 & ex.4 <190]

sum(ex.4[seq(52,90,1)])
mean(ex.4[seq(52,90,1)])

# 연습문제7
ex.5 <- c(100,200,120,300)
names(ex.5) <- c("a","b","c","d")
ex.5
ex.5[a]
cat(ex.5["b"],ex.5["c"])
sum(ex.5)
mean(ex.5)
