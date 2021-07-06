mat1 <- matrix(1:4, nrow = 2, byrow = T)
mat2 <- matrix(1:4, nrow = 2, byrow = T)

mat1
mat2

# 행렬곱 계싼은 수학의 행렬곱과 같은 방식
mat <- mat1 %*% mat2
mat

# 행력 사칙연산은 동일한 위치끼리 요소별 연산
mat1 + mat2

mat1 + 2

























