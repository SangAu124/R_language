# ifelse(test, yes, no)

v7 <- 5

ifelse(v7 >= 0, -v7, v7)
abs(v7) # ����

ifelse(pi>0,"positive", iselse(pi<0, "negative", "zero"))

#----------------------------------------------------------------------------

# ���� 1. ���õ� ���Ϳ��� ¦�� �϶� 0, Ȧ�� �ϋ� 1�� ġȯ�ϼ���
x <- 1:10
x

v8 <- ifelse(x %% 2 == 0, 0, 1)
v8

# ���� 2. ������ 0���� ũ�� 2��� ���
#         0�� ��� 0���, 0���� ���� ��� -2��� ���

x <- 5
ifelse(x > 0, x*2, ifelse(x == 0, 0, x*-2))


v9 <- function(x){
  ifelse(x > 0, x*2, ifelse(x == 0, 0, x*-2))  
}

v9(-5)
v9(0)
v9(4)
 














