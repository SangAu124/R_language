# llply : 리스트의 각 요소의 합계등을 계산할때 사용

lst <- list(A = matrix(1:9, 3), B = 1:5, C = matrix(1:4, 2), D = 2)

typeof(lapply(lst, sum)) # list로 나옴

typeof(llply(lst, sum)) # list로 나옴

# 동등비교
identical(lapply(lst, sum), llply(lst, sum))

is.vector(sapply(lst, sum))

is.vector(laply(lst, sum))


