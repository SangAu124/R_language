# ������ ��ü Ž�� �Լ�

mtcars

# 1. str(��ü��) : ������ ����, ���� ����, ������, ����ġ����, ����ġ �̸�����
str(mtcars)  

# 2. head, tail : ����6�� ����6���� ����ġ �̸�����
head(mtcars)
tail(mtcars)

# 3. dim() : ������ ��ü�� ����
dim(mtcars)

# 4. length() : �����Ͱ�ü�� ���� ����� ���� -->������ ����
length(mtcars)
length(mtcars$hp) # Ư�� ����� ����ġ�� ����

# 5. names() : �����Ͱ�ü�� ������� �̸�(������)
names(mtcars)

# 6. class() : �Ӽ� --> �ڷᱸ��
class(mtcars)


sapply(mtcars, class)
# mtcars�� ��� ������ class()�� �����ϼ�...�� �ǹ�
# ==> 11�� ���� ������ �Ӽ�(�ڷ���)�� ��Ÿ���� ��


# ������ ������ Ȱ��ȭ, ��Ȱ��ȭ �Լ�...


# 1. ������������$������    �Է� ������ ���� ���� ��

# mean(mpg) # error

mean(mtcars$mpg)

tf1 <- (max(mtcars$mpg) - mtcars$mpg)/(max(mtcars$mpg) - min(mtcars$mpg))
tf1

# 2. with(������������, ��ɹ�) : �ݺ��Ǵ� �����ͼ��� �ۼ��ϴ� �Լ�...

tf2 <- with(mtcars, (max(mpg) - mpg)/(max(mpg) - min(mpg)))
tf2

# 3. attach() : ���������� ���Ǵ� �������������� ����(Ȱ����)�� ��
#    detach() : ����ϴ� �������������� ���� �� ��

attach(mtcars)

tf3 <- (max(mpg) - mpg)/(max(mpg) - min(mpg))
tf3

hist(mpg)

summary(mpg)

plot(hp, mpg)

detach(mtcars)












