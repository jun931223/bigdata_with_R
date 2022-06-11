# 데이터 결측값 처리

#table() -> 데이터 빈도를 체크하는 함수
a <- c(1,2,1,1,1,2,3,2,1)
table(a)

b <- c("A","A","B","A","AB","A","O")
table(b)

# R의 예시 데이터 중 iris 품종 3가지 
# 각 품종의 빈도 체크
iris # 1종당 50개의 데이터가 출력됨
#  [,5]  => select fifth column 
# [row,column]
table(iris[,5]) # 각 종당 50 / 50 / 50 카운팅이 된 것을 확인할 수 있음

# 데이터 결측값
  # 데이터 수집 단계에서 변수에 값이 저장되지 않아 발생한 경우
  # 데이터 결측값으로 데이터 분서결과의 결론 유추에 영향을 미칠 수 있음

# 데이터 결측값을 제외하고 나머지 값 추출 후 사용
  # ex) 센싱 데이터의 결측값은 NA로 표기하고 데이터 정리
  # NA: 값은 있지만 정해진 범위 안의 값이 아니기 때문에 사용할 수 없음
  # NULL: 값이 정해지지 않아 값을 알 수 없음
sum(1 ,NULL , 3) # sum all numbers without null
sum(1,NA,2) # NA won't be skipped, so the result is NA

score_1  <- c(100,90,100)
score_2 <- c(100,NA,100)
score_3 <- c(100,90,80)
combine <- data.frame(score_1,score_2,score_3)
combine
mean(combine[,1])
mean(combine[,2]) # NA
mean(combine[,3])

# is.na: NA인 데이터가 있으면 T, 없으면 F
# na.omit NA인 데이터 제거 (NA가 포함된 행 제거)

for(val in 1:ncol(combine)){
 print(table(is.na(combine[,val])))
}

is.na(combine)
table(is.na(combine))
table(is.na(score_1))
table(is.na(score_2))
table(is.na(score_3))


# 데이터 프레임 a에서 결측치가 있는 원소 찾기
  # which 결측값이 있는 위치를 정확히 파악
which(is.na(combine)) # index값을 알려줌 
which(is.na(combine), T) # 정확한 위치를 알려줌

# 문장 내 옵션 na.rm = T
# 데이터 프레임 a에서 결측치가 있는 행 삭제 후 연산
colSums(combine) # score_2는 NA가 있기 때문에 합에 NA가 있다.
colSums(combine, na.rm=T) 
colMeans(combine, na.rm=T) 

# 결측값이 있는 열 찾기: score_2에서 결측치가 있는 행(1행)만 제거하고 평균 구하기
mean(score_1)
mean(score_2, na.rm = T)
score_2_exclude_na <- na.omit(score_2)
score_2
score_2_exclude_na
mean(score_2_exclude_na)

# 점수에 따라 학점이 배정되는 데이터프레임 생성
score_a <- c(100,NA,99,80)
score_b <- c("A","B","A","B")
exam_report <- data.frame(score_a, score_b)

sd(score_a,na.rm = T)
is.na(exam_report)
score_a_exclud_na <- na.omit(score_a)
which(is.na(exam_report),T)
without_na <- exam_report
without_na[2,1] <- "#"
without_na
