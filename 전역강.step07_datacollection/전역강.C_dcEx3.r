# rda ���Ϸ� ����
ID <- c(1, 2, 3, 4, 5)
SEX <- c("F", "M", "F", "M", "F")

data_ex <- data.frame(ID = ID, SEX = SEX)
class(data_ex)

# ����
save(data_ex, file = "out/data_ex.rda") # ������ ������ְ� ����

# ---------------------------------------------------------------------------

#rda ���� �ҷ�����

load("out/data_ex.rda") # �ҷ��ö� ������ ���� �ʿ����, �ڵ����� �������
View(data_ex)

#-------------------------------------------------------------------------

#csv ����

ID <- c(1, 2, 3, 4, 5)
SEX <- c("F", "M", "F", "M", "F")

data_ex <- data.frame(ID = ID, SEX = SEX)
write.csv(data_ex, file = "out/data_ex.csv")

#-------------------------------------------------------------------------
#txt ����

ID <- c(1, 2, 3, 4, 5)
SEX <- c("F", "M", "F", "M", "F")

data_ex <- data.frame(ID = ID, SEX = SEX)
write.csv(data_ex, file = "out/data_ex.txt")
write.csv(data_ex, file = "out/data_ex.txt", quote = T) # quote : ����ǥ ����
















