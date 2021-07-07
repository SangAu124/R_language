# �׷캰 ������ ����

# apply�йи�
# 1. apply()
# ��Ŀ� ��밡��, ��� ����� �ڷ����� �����ؾ� ��.
# ����� �ƴ� ��ü�� ������ ���� ��ķ� ��ȯ..

# ��� ����
mat <- matrix(1:9, nrow = 3)
mat

# �࿡ ���� ��
# apply(������, ��Ǵ� ������, ����� �Լ�)

apply(mat, 1, sum)

apply(mat, 2, sum)

# ���������� ���� r �Լ�
rowSums(mat)
colSums(mat)

#--------------------------------------------------------------------------
# ��Ŀ��� �� ����� ���� NA�� ���� --> na.rm�� �̿��ؼ� �������� �ڵ鸵
v <- c(1, NA, 2)
v
sum(v)

mat[2, 1] <- NA # ������ �ϳ� ����
mat
apply(mat, 1, sum) # �������� ���� NA�� ��Ÿ��

apply(mat, 1, sum, na.rm = T) # na.rm = TRUE�� ����ϸ� �������� ����

# �����Լ��� ����ص� ����� ���� ��.


# 2. lapply(), sapply()
# lapply()�Լ��� ����Ʈ�� ����ҿ� � �Լ��� �����ų�� ���, ����� ����Ʈ

lst <- list(A = matrix(1:9, 3), B = 1:5, C = matrix(1:4, 2), D = 2)

lapply(lst, sum) # ����� ����Ʈ�� ����

sapply(lst, sum) # ����� ���ͷ� ����


v1 <- c("Harry", "Ronald", "Hermione")

lapply(v1, nchar) # nchar : ������ ��������


#length�� nchar

str1 <- "Harry Potter"

length(str1)
nchar(str1)


# 3. mapply()
# �������� ����Ʈ�� ������ ������ ����Ʈ�� ���Ͽ� Ư�� �Լ� ����

lst1 <- list(A = matrix(1:16, 4), B = matrix(1:16, 2), C = 1:5)
lst2 <- list(A = matrix(1:16, 4), B = matrix(1:16, 8), C = 15:1)

mapply(identical, lst1, lst2) # identical : ������ ����

# �� ����� ���� ���ϴ� �Լ� ����
sFunc <- function(x, y){
  NROW(x) + NROW(y)
}

mapply(sFunc, lst1, lst2)



