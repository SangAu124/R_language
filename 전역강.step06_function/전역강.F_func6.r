# 그룹 데이터 조작
# data.table 패키지: 빠른속도(dbm의 인덱스 시스템)

install.packages("data.table")
library(data.table)

df <- data.frame(A = 1:10, 
                 B = letters[1:10],
                 C = LETTERS[11:20], 
                 D = rep(c("One", "Two", "Three"), length.out = 10))
# length.out : 생성도리 데이터의 개수
# rep : 원소의 반복

dt <- data.table(A = 1:10, 
                 B = letters[1:10],
                 C = LETTERS[11:20], 
                 D = rep(c("One", "Two", "Three"), length.out = 10))
class(df)
class(dt)

identical(df, dt)

class(df$C)
class(dt$C)

#---------------------------------------------------------------------------

library(ggplot2)

dia_dt <- data.table(diamonds)
class(diamonds)
class(dia_dt)

dia_dt
# 행 접근은 데이터 프레임과 같음

dt[1:2,]

dt[dt$A >= 7,] # T, F로 구선된 벡터를 만들고 벡터 스캔 방식으로 계산

dt[A >= 7,]

#---------------------------------------------------------------------------

dt[, list(A, C)]

dt[,B] # 자료구조가 character로 변경

dt[, list(B)] # 데이터테이블 구조를 유지하면서 하나의 열에 접근

#----------------------------------------------------------------------------
# 메모리에 만들어진 data.table 객체 정보 확인
tables()

# 아직 키가 만들어 지지 않은 상태이므로 키 영역의 값은 없는 상태
# 키를 부여하면 data.table을 인덱싱 하는 용도로 사용되어서 속도가 빨라짐

setkey(dt, D)
# 키열을 D로 지정하면 D열의 알파벳 순서로 정렬

dt
tables()

key(dt)

# 문제. 키의 값이 "One" 인 행을 검색하세요

dt["One",]

dt[c("One", "Two"),]

# 키를 지정할때 여러개의 열을 사용해도 됨
setkey(dia_dt, cut, color)

tables()

#-------------------------------------------------------------------------------
# 데이터 테이블 집계

# 인덱싱의 장점은 빠른 집계
# aggregate() d*ply() 계열 함수도 데이터테이블이
#데이터 프레임을 확장한 것이므로 데이터 테이블에 적용할 수 있지만
# 데이터 테이블 내장 집계함수를 사용하는 것이 빠름

diamonds

aggregate(price ~ cut, diamonds, mean) # cut 별 price, 데이터프레임

# 데이터테이블을 사용하여 같은 결과를 업고자 하는 경우
dia_dt[, mean(price), by = cut] # 결과의 컬럼이 v1으로 나옴

dia_dt[, list(price = mean(price)), by = cut] # aggregate()와 같은 열이름 표시

dia_dt[, mean(price), by = list(cut, color)]


dia_dt[, list(price = mean(price), carat = mean(carat)), by = cut]

dia_dt[, list(price = mean(price), carat = mean(carat)), by = list(cut, color)]

# 계산하고자 하는 여러개의 수치들과 복수의 그룹핑 변수들을 동시에 지정 가능
dia_dt[, list(price = mean(price), carat = mean(carat), caratSum = sum(carat)), by = list(cut, color)]





