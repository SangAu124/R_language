# 행렬 : 행과 열로 구성된 데이터 세트 - 각 요소의 속성은 동일해야함
# 배열 : 행렬의 구조를 n차원 으로 확장시킨 데이터 세트

# 행렬 생성 문법
# matrix(변수명, nrow = 행개수, ncol = 열개수)
#        변수명을 벡터값이 와야 함...

x <- c(1, 2, 3, 4, 5, 6)
matrix(x, nrow = 2, ncol = 3) # 변수 x를 2 * 3 행렬로 구성
matrix(x, nrow = 3, ncol = 2) # 변수 x를 3 * 2 행렬로 구성
matrix(x, 2, 3) # 변수 x를 2 * 3 행렬로 구성

matrix(x, nrow = 2, ncol = 3, byrow = TRUE)

























