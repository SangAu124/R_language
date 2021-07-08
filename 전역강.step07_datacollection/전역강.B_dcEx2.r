install.packages("readxl")

library(readxl)

# source("data_ex.xlsx")
ex_data <- read_excel("dist/data_ex.xlsx") # 상대참조
ex_data


# 절대 참조
ex_data <- read_excel("C:/Users/user/Documents/GitHub/R_language/전역강.step07_datacollection/dist/data_ex.xlsx")
class(ex_data)

View(ex_data)

#------------------------------------------------------------------------------

# 탭으로 구분된 txt파일 읽기
ex_data1 <- read.table("dist/data_ex.txt", header = TRUE)
View(ex_data)

# skip옵션을 이용하여 가져올 시작 위치 지정 : 원하는 행부터 가져오기
ex_data2 <- read.table("dist/data_ex.txt", skip = 2)
ex_data2

# 원하는 개수만큼 데이터 가져오기
ex_data3 <- read.table("dist/data_ex.txt", header = TRUE, nrows = 7)
View(ex_data3)

# 쉼표로 구분된 데이터 가져오기
# sep 옵션
ex1_data <- read.table("dist/data_ex1.txt", header = TRUE, sep = ",")
View(ex1_data)

# 변수명을 추가하여 데이터 가져오기
varname <- c("아이디", "성별", "나이", "지역")
ex2_data <- read.table("dist/data_ex2.txt", sep = ",", col.names = varname)
View(ex2_data)






