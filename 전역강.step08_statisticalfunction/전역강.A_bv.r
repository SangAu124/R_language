# basic visualization

install.packages("ggplot2")
library(ggplot2)
data("diamonds")

# 1. ���̽� ������׷�

# ������׷��� �����͸� ������� �����ѵ� ���� ���̰�
# ��޿� ���� ������

# ����� ũ��� ������ �ΰ��ϱ� ������ ������ �׷��� ���� �׷����� ã�ƾ���

#ĳ�� ������ ���� ������׷�
hist(diamonds$carat, main = "ĳ�� ������׷�", xlab = "ĳ��", ylab = "��")
# main : ����
# xlab, ylab : �� ����

#------------------------------------------------------------------------------

# 2. base scatter plot ������

# �ΰ��� ������ ���� ���踦 ���� ���

#���̾Ƹ�� �����ͼ¿��� ���ݰ� ĳ���� ���踦 ���Ľ����� ǥ��
plot(price ~ carat, data = diamonds)

# ���ķ� ���� �Ϲ� ǥ����
plot(diamonds$carat, diamonds$price)

#------------------------------------------------------------------------------

# 3. boxplot

boxplot(diamonds$carat)
# ���� �߰��� �β��� �� : �߾Ӱ�
# ���� �Ʒ����� ��� : �� 1�������
# ���� ������ ��� : �� 3�������
# �߾� 50%�� ���� ���� �ȿ� ��ġ
# ���� �� �Ʒ��� ���� �� : �ּҰ�
# ���� �� ���� ���� �� : �ִ밪
# �ִ밪 ���� �� : �̻���, �̻�ġ --> Ư����.


#------------------------------------------------------------------------------

# *ggplot2
# �⺻ ���� : �׷����� �׸� ����� dataset���� �Է�
#             x ��� y ���� �����͸� ����
#             ���������� �׷����� ���¸� ����

# ggplot(data = ds, aes(x = x1, y = x2)) + geom_XXX() +... --> ���� �׷���
# ggplot() + geom_XXX(data = xx, aes(x = x1, y = x2)) +... --> �����׷����� ���ļ� ����Ҷ�


# 1. Histogram, Densities

ggplot(diamonds) + 
  geom_histogram(aes(x = carat))
# ������׷� : �����͸� 1���� ������ ǥ���ϴ� ���̱� ������
#              ���� �ϳ��� ���ؼ� x�࿡ �����ϴ� ������ƽ ������ �����ϸ� ��

# ������׷� �е��
ggplot(diamonds) +
  geom_density(aes(carat), fill = "red")

# ������׷��� ��޿� ���� ���ڸ� ���÷��� �ϴ� �ݸ鿡 �е����
# ������ �Ǵ� ������ ���� �̵��ϸ鼭 �ش��ϴ� �������� �ش� ������
# �����Ǵ� Ȯ���� ������
# ������׷� : �̻꺯���� ������
# �е�� : ���Ӻ����� ������

# 2. scatter plot
# ggplot���� ��ü�� �ʱ�ȭ�� aes()�� geom�� �ƴ� ggplot�� ���Խ��� ���
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_point()

g <- ggplot(diamonds, aes(x = carat, y = price))
g + geom_point(aes(color = color))
# ������ ���� ���� �ڵ����� ����

# g + facet_wrap() : � ������ ������ ���� �����͸� ����ȭ�ϰ�
# ����ȭ�� �׷쿡 ���� ������ â���� ����� �װ��� ��ü �÷Կ� ��ġ
g + facet_wrap(~color) + geom_point(aes(color = color))

# facet_grid()�� ����ϰ� ������ ������ � �����l ��� ������
# �ϳ��� ���̳� ���� �Ҵ�
g + geom_point(aes(color = color)) + facet_grid(cut~clarity)

# ���̾Ƹ���� ���� ���� facetȭ �� ������׷�
ggplot(diamonds, aes(carat)) +
  geom_histogram(aes(color = color)) + 
  facet_wrap(~ color)

# 3. boxplot, violin plot

# �ڽ��÷��� y�ֽ���ƽ���� ���� 1���� �׷���
ggplot(diamonds, aes(y = carat, x = 1)) +
  geom_boxplot()

# x�ֽ���ƽ�� ������ �ʿ䰡 ������ �߰��ϸ� �� --> �������� �ڽ��÷�
ggplot(diamonds, aes(y = carat, x = cut)) +
  geom_boxplot()


ggplot(diamonds, aes(y = carat, x = cut)) +
  geom_point(aes(color = color))

# geom_ �Լ��� �߰��Ǵ� ������ ���� �׷����� ����� �ٲ�

ggplot(diamonds, aes(y = carat, x = cut)) +
  geom_violin() +
  geom_point()


ggplot(diamonds, aes(y = carat, x = cut)) +
  geom_point() +
  geom_violin()

# 4. line �׷���
# ������ ��뵿�� �����ͼ�
ggplot(economics, aes(x = data, y = pop)) +
  geom_line()

# ���� �� �׷����� ���ӵ� ������ ������ ǥ�� ���

#=============================================================================

# ��긮���� ��Ű�� : ��¥ �ٷ�� ���� ��Ű��
install.packages("lubridate")
library(lubridate)

# date�÷��� �̿��Ͽ� year mouth ������ ����

economics$year <- year(economics$date)
economics$month <- month(economics$date)

# ������ ���꼼��
econ2000 <- economics[economics$year >= 2000, ]

# �� �������� ���� ��Ű�� �ε�
library(scales)

# �÷� �ʱ�ȭ
g <- ggplot(econ2000, aes(x = month, y = pop))

# ������ ������ �ڵ�ȭ, year�� �׷�ȭ
g <- g + geom_line(aes(color = factor(year), group = year))
# group �ɼ��� �����͸� ������ �׷����� ����ȭ
# factor(year) ==> �̻��� �÷�������

# �����̸��� Year�� ����(�̻��� �÷��������� �̸�)
g <- g + scale_color_discrete(name = "Year") 

# y ���� ���� (�޸��� �̿��ؼ� ������ ����)
g <- g + scale_y_continuous(labels = comma)

# ����� �� ���̺� �߰�

g <- g + labs(title = "�α� ����", x = "��", y = "�α�")
g

#----------------------------------------------------------------------------

# �׸� : �׷��� ��ü�� ������ �ٲ� �� �־��
install.packages("ggthemes")
library(ggthemes)

g2 <- ggplot(diamonds, aes(x = carat, y = price))+ 
  geom_point(aes(color = color))

g2 + theme_economist() + scale_color_economist()
g2 + theme_excel_new() + scale_color_excel_new()
g2 + theme_tufte()
