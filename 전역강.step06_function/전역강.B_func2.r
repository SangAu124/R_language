# ���� �Լ�


require(ggplot2)

install.packages("ggplot2") # ��Ű�� ��ġ
data(diamonds, package = "ggplot2") # ��Ű�� �ε�

# diamonds
# head(diamonds)
# tail(diamonds)


# aggregate()�� ȣ�� �Ҷ� ���ķ��� ���
# ���ķ� : ƿ�带 ���̿� �ΰ� ���ʰ� ���������� ����
#          ���ʿ��� ����ϰ��� �ϴ� ����� �Ǵ� ������ ����
#          �����ʿ��� �׷��� ������ ������ �Ǵ� ������ ��...

# 1. ���̾Ƹ���� cut Ÿ�Կ� ���� price�� ���
aggregate(price ~ cut, diamonds, mean)


# 2. � �����͸� �ΰ��̻��� ������ �̿��ؼ� �׷�ȭ �Ϸ��� 
# �߰������� ���ķ��� �����ʿ� + ��ȣ�� ����Ͽ� �߰�
aggregate(price ~ cut + color, diamonds, mean)


# 3. �ΰ��� ������ ���Ͽ� ����� �����Ϸ��� ��� ���ķ��� ���ʿ�
# cbind�� ����ؼ� �ش� ������ ������ ��
aggregate(cbind(price, carat) ~ cut, diamonds, mean)

# 4. �ΰ��� ������ ���Ͽ� �׷�ȭ �ΰ��̻��� ������ ���Ͽ� ����� �����Ϸ���
# �Ʒ��� ���� ����ϸ� �ȴ�.
aggregate(cbind(price, carat) ~ cut + color, diamonds, mean)

