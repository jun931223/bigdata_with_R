colum.1 <- c("김한양","이한양","정한양")
colum.2 <- c(100,99,100)
board.1 <-data.frame(colum.1,colum.2)
board.1
board.2 <- cbind(colum.1,colum.2)
colnames(board.2)<-c("이름","score")
board

# 다양한 조건문과 활용
# if 조건문을 사용하는 것은 자바스크립트와 동일


if(total<80){
  print("pass")
}
print("scholarship")
total <- 100
if(total == 100){
  print("perfect")
} else if(total>90 & tatal<80){
  print("good")
}
time <- 14
ifelse(time>12,"오후","오전")

m <- 2024
if((m%%4 == 0 & m%%100 != 0) |  m%%400 == 0){
  print("윤년")
}else{
  print("none")
}

# 반복문 

for(i in 1:100){
  if(i %% 2 ==1){
    print(i)  
  }
}


test<- c()
n <- 4
n <- 10
for(i in 1:n){
  test[i] <- i
}
test[3]

n <- 0
sum <- 0
while(n < 10){
  n<- n + 1
  if(n %% 2 == 1){
   sum <- sum + n
   print(sum)
  }
}
print(sum)

i<-1
while(i<4){
  i<- i+1
  cat("*****","\n")
}
i<-1
repeat{
  i<-i+1
  if(i>4){
    break
  }else{
    cat("*****","\n")
  }
}

data.frame()
# 반복작업의 대상이 매트릭스나 데이터 프레임인 경우 사용
test.3 <- matrix(c(1,3,2,7,9,11),nrow=2,ncol=3)
test.3
apply(test.3,1,mean)
apply(test.3,2,mean)
str(cars)

apply(cars[1:20,],2,mean)
