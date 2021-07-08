# �׷� ������ ����
# data.table ��Ű��: �����ӵ�(dbm�� �ε��� �ý���)

install.packages("data.table")
library(data.table)

df <- data.frame(A = 1:10, 
                 B = letters[1:10],
                 C = LETTERS[11:20], 
                 D = rep(c("One", "Two", "Three"), length.out = 10))
# length.out : �������� �������� ����
# rep : ������ �ݺ�

dt <- data.table(A = 1:10, 
                 B = letters[1:10],
                 C = LETTERS[11:20], 
                 D = rep(c("One", "Two", "Three"), length.out = 10))
class(df)
class(dt)

identical(df, dt)

class(df$C)
class(dt$C)

#---------------------------------------------------------------------------

library(ggplot2)

dia_dt <- data.table(diamonds)
class(diamonds)
class(dia_dt)

dia_dt
# �� ������ ������ �����Ӱ� ����

dt[1:2,]

dt[dt$A >= 7,] # T, F�� ������ ���͸� ����� ���� ��ĵ ������� ���

dt[A >= 7,]

#---------------------------------------------------------------------------

dt[, list(A, C)]

dt[,B] # �ڷᱸ���� character�� ����

dt[, list(B)] # ���������̺� ������ �����ϸ鼭 �ϳ��� ���� ����

#----------------------------------------------------------------------------
# �޸𸮿� ������� data.table ��ü ���� Ȯ��
tables()

# ���� Ű�� ����� ���� ���� �����̹Ƿ� Ű ������ ���� ���� ����
# Ű�� �ο��ϸ� data.table�� �ε��� �ϴ� �뵵�� ���Ǿ �ӵ��� ������

setkey(dt, D)
# Ű���� D�� �����ϸ� D���� ���ĺ� ������ ����

dt
tables()

key(dt)

# ����. Ű�� ���� "One" �� ���� �˻��ϼ���

dt["One",]

dt[c("One", "Two"),]

# Ű�� �����Ҷ� �������� ���� ����ص� ��
setkey(dia_dt, cut, color)

tables()
















