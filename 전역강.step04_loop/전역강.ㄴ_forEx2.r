# 문제 1. 사용자에세 숫자를 입력받아 1부터 입력받은 숫자까지의 연속적인 숫자 출력
# 연속적인 숫자 출력

for1 <- function(x){
  for(i in 1:x){
    print(i)
  }
}

for1(3)

# 문제 2. 사용자에게 숫자를 입력받아 1부터 입력받은 숫자까지의 합계값 출력

for2 <- function(x){
  add <- 0
  for(i in 1:x){
    add = add + i
  }
  add
}

for2(10)
for2(100)

