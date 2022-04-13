## 사용자 정의함수 
# 함수이름 <- function(params){
#   명령문
#   return 실행결과
#  }

# R로 console.log 만들어보기 
console.log <- function(x){
  # if(length(x) == 1){
  # print(x)
  # }else{
  #   cat(x)
  # }
  len <- length(x)
  ifelse(len == 1,print(x),cat(x))
}

console.log(1)
console.log(1:3)
testFunc <- function(from,to){
  for(x in from:to){
    console.log(x)
  }
}

testFunc(1,5)
console.log(c(1:3))
test.muti <- function(a,b){
  return(list(a+b,a*b))
}
test.muti(1,2)

# n까지의 합, 평균, 분산, 표준편차 반환함수
test.varCalculator <- function(n){
  test <- c()
  for(i in 1:n){
    test[i]<-i
  }
    #res <- 
    return(list(sum(test),mean(test),var(test),sd(test)))
  }
test.varCalculator(5)

dist <- which(cars$dist>49)
speed <- which(cars$speed>19)
cars[dist,]
cars[speed,]
str(cars)
