#�Ϲ����� ����� ���� �Լ�
max.max <- function(x, y){
  num.max <- x
  if(y >  x){
    num.max <- y
  }
  return(num.max)
}

max.max(10, 15)
max.max(20, 15)

#----------------------------------------------------------------------

# defult value �Լ�
div.div <- function(x, y = 2){
  num.div <- x/y
  return(num.div)
}

div.div(x = 10, y = 3)
div.div(10, 3)
div.div(10)


# return���� �������� ���
cal.cal <- function(x, y){
  num.sum <- x + y
  num.mul <- x * y
  return(list(sum = num.sum, mul = num.mul))
}

result <- cal.cal(5, 8)

result$sum

result$mul

#--------------------------------------------------------------------------

# ����� ������ �Լ� ���

# setwd("c:r_lec") # �۷ι� �ɼ��� ��ŷ���丮 ������ ���� ����

source("������.dist/������.a_savefunc.r")

a <- div_(20, 4)
b <- div_(30, 4)

a + b

div_(div_(20, 2), 4)











