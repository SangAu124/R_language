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

# 문제 1
# 입사총점 : 815점
# 입사결과 : 합격

total <- function(x, y){
  sum_ <- x + y
  return(sum_)
}

rs <- function(score){
  if(score >= 800) 
    return(print("합격"))
  else
    return(print("불합격"))
}

toeic <- 750
it <- 65

cat("입사총점 : ", total(toeic, it), "\n")
cat("입사결과 : ", rs(total(toeic, it)))
