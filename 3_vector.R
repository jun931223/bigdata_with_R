## <-3주차 vector->
x <- c(1,2,3)
z <- 10:20
a <- seq(10,20,2)
r <- c(1,3,"a")
print(r)

s <- rep(c(100:105),3)
q <- rep(c(1,2),3)
e <- rep(c(1,2),each=3)
print(z)
print(a)
print(b)
print(s)

print(q)
print(e)

combine <- c(q,e)

print(combine)


## <-vector test->

test1 <- 10:20
test2 <- c(TRUE,TRUE,FALSE)
test3 <- c("Hi","Good","Morning")
test4 <- rep(10:12,2)
testCombined <- c(test1,test2,test3,test4)
print(testCombined)

## <-vector index and naming->
test6 <- 1:4
test6[1]
test6[4]
names(test6)<- c("one","two","three","four")
test6

## <-vector index and naming test->
test7 <- c(99,100,100)
names(test7) <- c("김한약","이한양","정한양")


## <-vector print values->
test7[1]
test7[c(1,2)]
test7[(1:3)]
test7[-c(1,3)]
## <-vector change values->

test7[1] <- 30
test7[1:3]<- c(10:12)
test7

## <-vector test->
arr <- 1:20
arr[1:10]
arr[c(2,4,6,8,10)]
arr[-seq(1,20,2)]
arr[2:5] <- c(100)
arr[11] <- c(200)

## <-vector func->

# sum() 벡터에 포함된 값들의 합
# mean() 값들의 평균
# median()  값들의 중앙값
# var() 값들의 분산
# sd() 표준편차
# sort() 값들의 정렬 (기본값은 오름차순)
# range(),length() 값들의 범위, 값들의 개수

## sort(a,decreasing=TRUE) 내림차순
vec <- c(10,5,2,4,12)
mean(vec[(1:3)])
sort(vec[c(1,3)])

## test
students <- c(90,80,100,100,99)
names(students) <- c("k","i","j","h","m")
sum(students)
mean(students)
var(students)
median(students)
students
