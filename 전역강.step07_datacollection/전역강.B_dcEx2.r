install.packages("readxl")

library(readxl)

# source("data_ex.xlsx")
ex_data <- read_excel("dist/data_ex.xlsx") # �������
ex_data


# ���� ����
ex_data <- read_excel("C:/Users/user/Documents/GitHub/R_language/������.step07_datacollection/dist/data_ex.xlsx")
class(ex_data)

View(ex_data)

#------------------------------------------------------------------------------

# ������ ���е� txt���� �б�
ex_data1 <- read.table("dist/data_ex.txt", header = TRUE)
View(ex_data)

# skip�ɼ��� �̿��Ͽ� ������ ���� ��ġ ���� : ���ϴ� ����� ��������
ex_data2 <- read.table("dist/data_ex.txt", skip = 2)
ex_data2

# ���ϴ� ������ŭ ������ ��������
ex_data3 <- read.table("dist/data_ex.txt", header = TRUE, nrows = 7)
View(ex_data3)

# ��ǥ�� ���е� ������ ��������
# sep �ɼ�
ex1_data <- read.table("dist/data_ex1.txt", header = TRUE, sep = ",")
View(ex1_data)

# �������� �߰��Ͽ� ������ ��������
varname <- c("���̵�", "����", "����", "����")
ex2_data <- read.table("dist/data_ex2.txt", sep = ",", col.names = varname)
View(ex2_data)






