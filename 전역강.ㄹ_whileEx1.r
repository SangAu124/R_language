#횟수와 상관 없이 조건이 참일 경우 계속 반봅할 때 사용
#while(조건){
#  조건이 참일동안 수행 할 문장
#}

z <- 0

while(z < 5){
  z <- z + 2
  print(z)
}

#----------------------------------------------------------------------------

sumx <- 0
i <- 1

while(i <= 10){
  sumx <- sumx + i
  i <- i+1
}
sumx

#----------------------------------------------------------------------------
#while에서 if와break문 사용하기

x <- 1

while(TRUE){
  x <- x + 1
  if(x == 4)
    break
  print(x)
}

# 특정 조건을 건너뛰고 싶은 경우next 키워드 사용
i <- 0

while(i < 10){
  i <- i + 1
  if(i %% 2 != 0)
    next
  print(i)
}

#----------------------------------------------------------------------------

x <- 1

while(x < 5){
  x <- x + i; if(x == 4) break; print(x);
}











