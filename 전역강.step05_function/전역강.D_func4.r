view1 <- function(str1){
  print(str1)
}

view2 <- function(num1){
  for(i in num1)
    print(num1)
}

str1 <- "happy"
view1(str1)
view2(c(1:5))

#-------------------------------------------------------------------

# ���� 1
# �Ի����� : 815��
# �Ի��� : �հ�

total <- function(x, y){
  sum_ <- x + y
  return(sum_)
}

rs <- function(score){
  if(score >= 800) 
    return(print("�հ�"))
  else
    return(print("���հ�"))
}

toeic <- 750
it <- 65

cat("�Ի����� : ", total(toeic, it), "\n")
cat("�Ի��� : ", rs(total(toeic, it)))
