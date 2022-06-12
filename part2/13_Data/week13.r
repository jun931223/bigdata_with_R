install.packages("gapminder")
library("gapminder")
# matrix vs array

# array -> 행과 열로 구성된 자료형을 갖는 값들로 구성
# dim을 지정하지 않으면 1차원 배열로 생성
array(1:4, dim = c(2,2), dimnames = list(c("row1","row2"),c("col1","col2")))
#     col1 col2
# row1    1    3
 #row2    2    4

 array(1:24, dim = c(2,6,2))
# dim = c(row,col,Array EA)
# 1~24를 1/2로 row 2 col 6 로 구성된 배열이 2개 생성 

a <- array(1:24, dim = c(4,6))
# apply의 두번째 인자의 1은 row, 2는 col을 상대로 콜백이 적용된다.
apply(a,1,sum)

st.4 <- data.frame(c(1:3))
st.5 <- cbind(st.4, c(4:6))
st.6 <- rbind(st.5,c(4,7))

which(st.6 == 6, T)
st.6[3,2] <- "*"
st.6

# 메트릭스와 데이터 프레임 탐색을 위한 유용한 함수 1
# dim() -> 행과 열의 개수 출력
dim(gapminder)
# nrow() -> 행 개수 출력
nrow(gapminder)
# ncol() -> 열 개수 출력
ncol(gapminder)
# conlames() -> 열 이름 출력
colnames(gapminder)
# head() -> 데이터 셋 앞 부분의 일부 출력 max 20개
head(gapminder, 20)
# tail() -> 데이터 셋 뒷부분의 일부 출력 max 20
tail(gapminder,20)

# practice
dim(iris)
colnames(iris)
head(iris,10)
tail(iris,5)

# 메트릭스와 데이터 프레임 탐색을 위한 유용한 함수 2
# str() -> 데이터 셋 요약정보 및 데이터들
str(gapminder)
# unique() -> 중복을 제거하여 출력
unique(gapminder$country)
# table() -> 값에 대한 분포
table(gapminder$country)
# subset() -> 조건에 맞는 값 추출
subset(gapminder,gapminder$country == "Sri Lanka")

# practice
colnames(iris)
unique(iris$Species)
table(iris$Species)
iris[c(1:2)]
iris[c(1:10),]
iris[c(1:10),c(1,5)]

# data.frame(rowHead = colEle,...)
prac.5 <- data.frame(col1 = c("a","b"), col2 = c(1,2))
rownames(prac.5) <- c("one","two")
cbind(prac.5,col3=c(3,4))

#practice
prac.6 <- data.frame(name=c("kim","lee","kim"), grade=c(1,2,2), dept=c("sw","comp_sci","sw"),score=c(100,99,100))
prac.6

#prac
iris_test <- data.frame(iris[1:2,])
iris_test

write.table(quakes,"./data/ch13.txt",sep=",")
ch13_read2 <- read.table("./data/ch13.txt")
head(ch13_read2,10)
tail(ch13_read2,3)
colnames(ch13_read2)
str(ch13_read2)
summary(ch13_read2)
