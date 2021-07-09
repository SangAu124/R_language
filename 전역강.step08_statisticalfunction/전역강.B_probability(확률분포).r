# Ȯ�� ������ ����� �߽�

install.packages("tidyverse")
library(tidyverse)

# 1. ���Ժ���(���콺 ����) : ������ ����� �����

# ����� 0, ǥ�������� 1�� ���Ժ��� (ǥ������)�� ������ 10���� ��������

rnorm(n = 10)

# ����� 100, ǥ�������� 20�� �������� 10���� ���� ����
rnorm(n = 10, mean = 100, sd = 20)

# Ȯ�� �е��� Ư���� �������� Ȯ���� ==> dnorm()
rndNorm10 <- rnorm(10)
dnorm(rndNorm10)

# dnorm() Ư�� ���ڰ� �߻��ϴ� Ȯ���� ��ȯ
# ���������� ���Ӻ��������� � ���� ���� Ȯ������ ����ϴ� ���� �Ұ���
# �̰��� ȣ���������� ������

# dnorm()�� ��հ� ǥ������ ��������
rndNorm <- rnorm(3000)

# ����(Ȯ�� �е�) ���
rndDensity <- dnorm(rndNorm)

rndDensity

# Ƽ�� �����ͼ� ����
rndTable <- tibble(rndNorm, rndDensity)

#PLOT
ggplot(rndTable, aes(x = rndNorm, y = rndDensity)) +
  geom_point() + labs(x = "Random Normal Variables",
                      y = "Density")











