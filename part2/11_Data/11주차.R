install.packages("gapminder")
install.packages("dplyr")
library("gapminder")
library("dplyr")

# $가 없어도 데이터 추출이 가능
# select(데이터,ㅣ ...행 데이터)
# select row 추출  
  # ex) select(gapminder, country) 
  #  -> 쉼표로 구분하여 여러 열의 이름 나열 가능

select(gapminder, country)
select(gapminder, country,pop)
select(gapminder, country,pop,gdpPercap)

# filter

filter(gapminder, country == "Korea, Rep.")
# filter를 사용하지 않을 경우
gapminder[gapminder$country == "Korea, Rep." & gapminder$year >2000,]
# filter를 사용할 경우 훨씬 더 간결하게 사용할 수 있는 것을 확인할 수 있음
filter(gapminder, country == "Korea, Rep.", year > 2000)

#summarize (데이터, 통계분석 내용)
  # ex_) summarize(gapminder, test.1=mean(pop))
summarise(gapminder, max(pop))
summarise(gapminder, min(pop))
summarise(gapminder, median(pop))
summarise(gapminder, sum(pop))
summarise(gapminder, mean(pop))

summarise(gapminder, ans.1=max(pop), ans.2=mean(lifeExp))
summarise(gapminder, ans.3=mean(pop), ans.4=var(lifeExp))

#group_by (데이터, 그룹화할 속성)
  # ex_) group_by(gapminder, country, continent)

test.1 <- group_by(gapminder, country)
test.1

test.2 <- group_by(gapminder, continent)
test.2

test.3 <- group_by (gapminder, continent,country)
test.3

test.4 <- group_by(gapminder, country)
summarise(test.4,mean(pop))
summarise(test.4,sd(lifeExp))

# mutate (데이터, 새로운 열 이름 = 식)
  # gapminder에 temp1 열 신규 생성 pop/100의 값을 temp1에 저장
  mutate(gapminder,temp.1=pop/100)
  gapminder
# arrange (데이터, 정렬할 열들을 쉼표로 나열)
  #오름차순
  arrange(gapminder, pop)
  #내림차순
  arrange(gapminder, desc(pop))
  
  
  # chain() or %>% : 데이터 프레임간의 유기적 연결
    #A: chain_test <- group_by(gapminder,country)
    #B: chain_test2 <- summarize(chain_test, avg_pop = mean(pop)
  
  #위의 AB가 하단의 식과 똑같이 작동
  gapminder %>%
    group_by(country) %>%
    summarize(avg_pop = mean(pop))