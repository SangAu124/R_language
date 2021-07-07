#일반적인 사용자 정의 함수
max.max <- function(x, y){
  num.max <- x
  if(y >  x){
    num.max <- y
  }
  return(num.max)
}

max.max(10, 15)
max.max(20, 15)

#----------------------------------------------------------------------

# defult value 함수
div.div <- function(x, y = 2){
  num.div <- x/y
  return(num.div)
}

div.div(x = 10, y = 3)
div.div(10, 3)
div.div(10)


# return값이 여러개인 경우
cal.cal <- function(x, y){
  num.sum <- x + y
  num.mul <- x * y
  return(list(sum = num.sum, mul = num.mul))
}

result <- cal.cal(5, 8)

result$sum

result$mul

#--------------------------------------------------------------------------

# 저장된 파일의 함수 사용

# setwd("c:r_lec") # 글로벌 옵션의 워킹디렉토리 지정과 같은 개념

source("전역강.dist/전역강.a_savefunc.r")

a <- div_(20, 4)
b <- div_(30, 4)

a + b

div_(div_(20, 2), 4)











