# 데이터 가공
install.packages("gapminder")
library(gapminder)
str(gapminder)
# country 국가명, continent 국가가 속한 대륙, lifeExp 기대수명, pop: 인구, gapPercap: 1인당 국내총생산
gapminder
# 각 대륙별 빈도 구하기
table(gapminder[,2])

# 나라별 기대수명 추출
gapminder[,c(1,4)]

# 한국의 정보추출
gapminder[gapminder["country"] == "Korea, Rep.", ]

kor_info_with_filter <- filter(gapminder, country == "Korea, Rep.")
kor_pop <- kor_info_with_filter[,5]
sum(kor_pop)

kor_info_with_filter_2000 <- filter(kor_info_with_filter, year > 2000)
kor_info_with_filter_2000[, c(4:5)]
# 한국의 인구 정보 추출 및 전체 인구 합 구하기

kor_info <- gapminder[gapminder$country == "Korea, Rep.", ]
kor_pop <- kor_info[, 5]
sum(kor_pop)

# 한국의 Korea,Rep의 2000년 보다 큰 경우의 인구와 기대수명 구하기
kor_info_over_2000 <- kor_info[kor_info$year > 2000, ]
kor_info_over_2000
kor_info_over_2000[, c("lifeExp", "pop")]

# 속성별 요약
summary(gapminder)

# gapMinder 연도별 표본개수 출력 (table 사용)
table(gapminder[, 3])
gapminder

kor_2000 <- filter(gapminder, country == "Korea, Rep." & year > 2000)
kor_2000[c(5:6)]
# 한국의 데이터 중 2000년 이후의 인구와 1인당 국내총생산량 추출
gapminder[gapminder$country == "Korea, Rep." & gapminder$year > 2000,
c("pop", "gdpPercap")]

