for(i in 1:5) print (1:i)

#----------------------------------------------------------------------------

for(n in c(2, 5, 10, 20, 50)){
  x <- stats::rnorm(n)
  cat(n, ";", sum(x^2), "\n", sep = "")
}
x

#----------------------------------------------------------------------------
#LETTERS : r의 내장 상수(영문 소문자)

fact <- 
  factor(sample(letters[1:5], 10, replace = TRUE)) # 복원 추출

for(i in unique(fact)){
  print(i)
}

# sample(데이터, 뽑아낼 샘플의 수, 복원||비복원 설정)
# factor() : 벡터를 factor로 만들어 주는 함수
# unique() : 중복되는 값을 제거하는 함수
