# 논리 연산자

x <- 10
y <- 30

#less than
x < y

#less than or equal to
x <= y

#greater than
x > y

#greater thar or equal to
x >= y

# exactly equal to
x == y

# not equal to
x != y

# not x
!x

# x or y, element wise
x | y

# x OR y, first element of vector
x <- c(1, 0, 0)
y <- 1
x || y

# x and y, element wise
x & y

# x AND y, first element of vector
x && y

# 
xor(x, y)

#-------------------------------------------------------------------------------

a <- c(10, 20 ,30, 40 ,50)
b <- 30

a < b

a <= b
a > b
a!=b

a + b
a / b

#-------------------------------------------------------------------------------

x <- c(T, T, T)
y <- c(T, F, F)

x & y

x | y

any(y) # 하나라도 TRUE라면 TRUE를 리턴

all(y) # 모두 TURE일때 TRUE를 리턴

#-------------------------------------------------------------------------------

# 논리값의 데이터 개수가 다른 경우의 논리연산
# 1. 데이터의 개수가 배수관계인 경우

a <- c(10, 20, 30, 40, 50, 60)
b <- c(10, 20, 30)

a < b
a > b
a >= b

# 2. 데이터의 개수가 배수관계가 아닌 경우 --> 리사이클링 룰이 적용

a <- c(10, 20, 30, 10, 20)
b <- c(10, 20, 30)

a < b
a > b
a >= b



























