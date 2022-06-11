# 벡터는 하나의 타입에 대해서만 저장할 수 있다.
vector.test <- c(1:5)
vector.test + 2

# 리스트는 모든 타입을 저장할 수 있다.
list.test <- list(num = 1, name = "name", age = 20)
list.test[1]
list.test$num

# 리스트에 벡터 포함가능
list.test2 <- list(vect = vector.test, name = "벡터")
list.test2$name
list.test2$vect

# 팩터는 정해진 범위 안의 문자를 활용하는 경우에 사용된다.
  # 문자형 백터를 만든 후 factor() 함수를 이용해서 팩터로 치환
subject <- c("과학","수학","물리")
factor.test <- factor(subject)
factor.test

# 매트릭스 개념과 생성
matrix.test <- matrix(1:10, nrow=5, ncol=2, byrow=T)
matrix.test

# 백터를 열방향으로 묶어서 매트릭스 생성
i <- c(1:5)
j <- c(6:10)
cbind(i,j) # column bind / first arguments -> first column
rbind(i,j) # row bind  / first arguments -> first row

# 데이터 프레임
# 2차원인 테이블의 형태로 데이터를 표현하며 숫자, 문자 등 서로 다른 형태 데이터를 표현 가능
name <- c("김한양","이한양","너한양")
score <- c(100,99,98)
report_bind <- cbind(name,score)
report_bind

report_info <- data.frame(name, score)
report_info
