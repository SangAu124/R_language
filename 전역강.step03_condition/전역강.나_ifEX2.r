# if ~ else
# ¹®¹ý id(cond) expr1 else eqpr2

v1 <- 10

if(v1 > 5){
  print(v1)
} else{
  print(v1 * 10)
  print(v1 / 10)
}

#-----------------------------------------------------------------------------
v2 <- 10
v3 <- 20

if(v2 > v3){
  v4 <- v2
} else{
  v5 <- v3
}

v5
v4
  
#-------------------------------------------------------------------------

pi

if(pi<3){
  print('expr if statement')
}else {
  print('expr esle statement')
}

#--------------------------------------------------------------------------
# ÁßÃ¸ if¹®
v6 <- c(-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5)
length(v6)

if(length(v6) == 11){
  if(sum(v6) == 55){
    print('expr if statement')
  }else {
    print(sum(v6))
  }
}else {
  print("vector v6 length != 11")
}
























