# read.table 일반 텍스트 파일 읽기
test_1 <- read.table("data/data.txt", header = T) 
str(test_1)

# write.table 일반 텍스트 파일 쓰기
write.table(test_1, file = "data/dataWithoutQuote.txt", quote = F)  
write.table(test_1, file = "data/dataWithQuote.txt")

test_2 <- read.table("data/dataWithDot.txt", header = T, sep = ",", as.is= T)
str(test_2)

test_3 <- read.csv("data/Book1.csv")
str(test_3)

# read.csv csv 파일 읽기
test_4 <- read.csv("data/Book1.csv", col.names = c("Name","C","JAVA","PYTHON"),row.names = c("김한양","이한양","정한양","리한양","황한향"))

# write.csv csv 파일 쓰기
write.csv(test_4, file = "data/addRowAndColNames.csv" , quote = F )
