# plry ���� �Լ�

library(ggplot2)
data("diamonds", package = "ggplot2")

aggregate(price~cut, diamonds, each(mean, median))
# each() : aggregate()���� �Լ��� �������� �Լ��� ������ �� �ֶǷ� ���ִ� �Լ�
