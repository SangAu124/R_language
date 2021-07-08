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
















