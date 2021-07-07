# 그룹별 데이터 조작

# apply패밀리
# 1. apply()
# 행렬에 사용가능, 모든 요소의 자료형이 동일해야 함.
# 행렬이 아닌 객체를 받으면 먼저 행렬로 변환..

# 행렬 생성
mat <- matrix(1:9, nrow = 3)
mat

# 행에 대한 합
# apply(데이터, 행또는 열구분, 사용할 함수)

apply(mat, 1, sum)

apply(mat, 2, sum)

# 유사형식의 내장 r 함수
rowSums(mat)
colSums(mat)

#--------------------------------------------------------------------------
# 행렬에서 한 요소의 값을 NA로 변경 --> na.rm을 이용해서 결측값을 핸들링
v <- c(1, NA, 2)
v
sum(v)

mat[2, 1] <- NA # 결측값 하나 대입
mat
apply(mat, 1, sum) # 결측값에 대한 NA가 나타남

apply(mat, 1, sum, na.rm = T) # na.rm = TRUE를 사용하면 결측값은 무시

# 내장함수를 사용해도 결과는 동일 함.


# 2. lapply(), sapply()
# lapply()함수는 리스트의 각요소에 어떤 함수를 적용시킬때 사용, 결과는 리스트

lst <- list(A = matrix(1:9, 3), B = 1:5, C = matrix(1:4, 2), D = 2)

lapply(lst, sum) # 결과가 리스트로 나옴

sapply(lst, sum) # 결과가 벡터로 나옴


v1 <- c("Harry", "Ronald", "Hermione")

lapply(v1, nchar) # nchar : 문자의 길이측정


#length와 nchar

str1 <- "Harry Potter"

length(str1)
nchar(str1)


# 3. mapply()
# 여러개의 리스트가 있을때 각각의 리스트에 대하여 특정 함수 적용

lst1 <- list(A = matrix(1:16, 4), B = matrix(1:16, 2), C = 1:5)
lst2 <- list(A = matrix(1:16, 4), B = matrix(1:16, 8), C = 15:1)

mapply(identical, lst1, lst2) # identical : 같은지 여부

# 각 요소의 행을 더하는 함수 정의
sFunc <- function(x, y){
  NROW(x) + NROW(y)
}

mapply(sFunc, lst1, lst2)



