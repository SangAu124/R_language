# r �Լ� ����

# 1. ���� r�Լ�
# cos(x), sin(x), tan(x), sum(x), mean(x)
# 2. ����� ���� r�Լ�
# function_name <- function(arguments){ function_body}

#-------------------------------------------------------------------

show1 <- function(a, b, c, d){
  x<- data.frame(a, b, c, d)
  x
}

show2 <- function(k, e, m){
  return(k+e+m)
}

show3 <- function(k, e, m){
  return(k*e*m)
}

show4 <- function(k, e, m){
  avg <- (k + e + m) / 3
  if(avg >= 60)
    return("�հ�")
  else
    return("���հ�")
}

show1(1:3, c("��", "��", "��"), seq(10.1, 10.3, 0.1), c(1:3))
show2(95, 85, 73)
x <- 1:6
show3(matrix(x, nrow = 2, ncol = 3), matrix(x, nrow = 2, ncol = 3), matrix(x, nrow = 2))
show4(95, 85, 73)