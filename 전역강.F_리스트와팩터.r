# ����Ʈ(list)�� ����(factor)
# list : 1���� ������ ������(���� �ڷ����� ���ÿ� ������ �� �ִ� ������ ��Ʈ)

# 1. ����Ʈ ����
list1 <- list(c(1, 2, 3), "Hello") # ������, ������ ���ͷ� ������ list1 ����
list1

str(list1)

list2 <- list(1:3, c("James", "Litar"))
# ù��° ����� ũ��3�� numeric vector,
#�ι�° ����� ũ��2�� charcter vector
list2

#����Ʈ�� ����� �̸� ���ǰ� ����
list2 <- list(id = 1:3, names = c("James", "Litar"))
list2


#2. ����Ʈ�� ��ҿ� ����
list2[[1]] # [1] 1 2 3 
list2[[2]] # [1] "James" "Litar"

list2$id
list$names

# sliced list : list���� x[i]���¸� �����ϸ� ����� ������ �ϴ°� �ƴ϶�
# �ε����� �ش��ϴ� ����� ��Ƽ� ���ο� ����Ʈ�� �����ؼ� ��������

list2[1]
list2[2]

# 3. ����Ʈ ����




















