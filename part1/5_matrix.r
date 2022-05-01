# 매트릭스: 2차원인 테이블의 형태로 데이터를 표현
# 데이터 테이블의 모든 셀 값들이 동일한 자료형 이어야 한다.

matrix(c(1:12), nrow = 3, ncol = 4)
matrix(c(1:12), nrow = 4, ncol = 3)

# 1. 매트릭스 생성
test.2 <- matrix(1:25,nrow=5,ncol=5,byrow=F)
test.2
vector.1 <- c(100,99,89,100,99,100)
vector.2 <- c(10,9,8,10,9,10)
vector.3 <- c(10)
test.3 <- matrix(vector.1,nrow=3,ncol=2,byrow=T)
test.3
# 2. 벡터를 열방향으로 묶어서 매트릭스 생성
cbind(vector.1,vector.2)
cbind(vector.1,vector.3)
# 3. 벡터를 행방향으로 묶어서 매트릭스 생성
rbind(vector.1,vector.2)

vector.4 <- c(11,13,15,20,11)
vector.5 <- c(21,25,33,25,20)
cbind(vector.4,vector.5)
rbind(vector.4,vector.5)

# 해보기4
prac.1 <- c(1:5)
prac.2 <- c(6:10)
matrix.1 <- matrix(1:25,nrow=5,ncol=5)
bindPrac <- rbind(prac.1,prac.2)
matrix.1
bindPrac
rbind(bindPrac,matrix.1)

# 해보기5
prac.3 <- c(11,13,15,20,100)
prac.4 <- c(21,25,33,25,20)
matrix.2 <- matrix(c(1,2,3,5,9,10,11,13,20,100),nrow=5,ncol=2)
bindPrac.2 <- cbind(prac.3,prac.4,matrix.2)
bindPrac.2
matrix.3 <- matrix(bindPrac.2,nrow=5,ncol=4,byrow=T)
matrix.3

# 4. 매트릭스 값 추출 
# matrix[row,col]
matrix.3
matrix.3[,4]
matrix.3[4,]

# 실습
matrix.4 <- matrix(1:25,nrow=5,ncol=5)
matrix.4
matrix.4[1,1:3]
matrix.4[1,c(1,2,5)]
matrix.4[1:3,]
matrix.4[,c(1,5)]

# 해보기6
matrix.3[1,2]
matrix.3[2,4]
matrix.3[3,1]

# 5. 매트릭스 행과 열에 이름 넣기
rownames(matrix.3) = c("one","two","three","four","five")
colnames(matrix.3) = c("가나","다라","마바","사아")
matrix.3

## 실습
score.1 <- c(99,100,100)
score.2 <- c(98,80,99)
score.3 <- c(100,99,100)
subject <- cbind(score.1,score.2,score.3)
rownames(subject) <- c("kim","lee","oh")
colnames(subject) <- c("C","JAVA","Python")
subject
subject[1,1]
subject[2,3]
subject[3,2:3]

# 데이터 프레임
# 2차원인 테이블의 형태로 데이터를 표현하며 사로 다른 타입 표현가능
sub.no <- c("c_01","c_02","c_03")
sub <- c("kor","math","eng")
score <- c(100,99,100)
st.info2 <- data.frame(sub.no,sub,score)
st.info2
st.info2[1,c(1,3)]

# 해보기8
heig <-  c(180,190,170,160)
weig <-  c(100,90,80,70)
gen <- c("f","m","m","f")
st.info3 <- data.frame(heig,weig,gen)
st.info3
st.info3[,1]
st.info3[,3]
st.info3[2,]
st.info3[1,c(1,3)]
