# repeat{} : 특정 조건 없이 계속 반복 실행, 탈풍 조건을 내부에 지정해야함
# 탈출 조건은 if와 break를 사용하면 됨

z <- 0
repeat{
  z <- z+1
  print(z)
  if(z > 100) break
}

sumx <- 0
i <- 1
repeat{
  sumx <- sumx + i
  i <- i + 1
  if(i > 10) break
}
sumx

















