# �� ������

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

any(y) # �ϳ��� TRUE��� TRUE�� ����

all(y) # ��� TURE�϶� TRUE�� ����

#-------------------------------------------------------------------------------

# ������ ������ ������ �ٸ� ����� ������
# 1. �������� ������ ��������� ���

a <- c(10, 20, 30, 40, 50, 60)
b <- c(10, 20, 30)

a < b
a > b
a >= b

# 2. �������� ������ ������谡 �ƴ� ��� --> ������Ŭ�� ���� ����

a <- c(10, 20, 30, 10, 20)
b <- c(10, 20, 30)

a < b
a > b
a >= b



























