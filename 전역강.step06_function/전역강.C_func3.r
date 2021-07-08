# plyr ��Ű�� -- �ص鸮 ����
# �Լ�      �Է�Ÿ��        ���Ÿ��
# ddply     ������������    ������������
# llply     ����Ʈ          ����Ʈ
# aaply     �迭/����/���  �迭/����/���
# dlply     ������������    ����Ʈ
# daply     
# d_ply     ������������    node..(for side effect)
# laply
# ldply
# l_ply
# adply
# alply
# a_ply

install.packages("plyr")
library(plyr)

# 1. ddply()
# �������������� ���ؼ� Ư�� �������� �����͸� ������ ��
# ���ϴ� �Լ��� ������ ��Ű�� �ϳ��� �������������� ���

# head(baseball)
# tail(baseball)
# ��Ÿ h, �籸 bb, ���庼 hbp, Ÿ�� ab, ����ö��� sf

# 1954�� ������ ���� ��Ͽ��� ����ö��� sf�� 0�� �Ǿ����..
# NA�� ǥ�� �Ǵ� ������ 0 ���� �ٲپ ���..

# ���꼼��[] ==> ifelse ���� ����
baseball$sf[baseball$year<1954] <- 0

any(is.na(baseball$sf))

# ���� �´� ���� NA�� ��� 0 ���� ó��
baseball$hbp[is.na(baseball$hbp)] <- 0

any(is.na(baseball$sf))


# �� ���� 50Ÿ�� �̸��� ������ ����
baseball <- baseball[baseball$ab >= 50, ]
baseball

# ����� ���
baseball$OBP <- with(baseball, (h + bb + hbp) / (ab + bb + hbp + sf))
tail(baseball)
# with() : dataframe�� ������ ���ؼ� �տ� ������������ �̸��� ������� �ʾƵ�
# ����� �� �ְ� ����. baseball$h�� h��� ������ ��...


baseball


# 
dbp <- function(data){
  c(OBP = with(data, sum(h + bb + hbp) / sum(ab + bb + hbp + sf)))
}

# ddply() ������ ��±Ⱓ ���� ����� ���
careerOBP <- ddply(baseball, .variables ="id", .fun = obp)
#            ddply(������, �����͸� �׷� ���� ������, ����� �Լ�)
head(carrerOBP)


# ���(careerOBP)�� ������� ���� ����
careerOBP <- careerOBP[order(careerOBP$OBP, decreasing = TRUE),]
head(carrerOBP, 10) # ���� 10���� ������� ���� ������ �����

#---------------------------------------------------------------------------
# order(), sort()

v1 <- c(40, 30, 50, 50, 90, 40, 50)
v2 <- c(5100, 6500, 2000, 2000, 9000, 4500, 3000)
v3 <- c("A", "B", "A", "B", "A", "A", "B")
v123 <- data.frame(v1, v2, v3)
v123

# order() : ������������ ����

order(v1)

v1[order(v1)]

# sort()
sort(v1) # ��������

sort(v1, decreasing = TRUE) # ����������

# ������������ ����
rm(v1, v2, v3)
attach(v123)


v123_order <- v123[order(v1, -v2, v3),]
v123_order

# ������������ ������ ������� ����
# ������ ���� ������ ��� ���� �÷��� ���Ͽ� ������ ���� ���� ������ ����

# plry ��Ű���� arrange()�� �̿��� ���ĵ� ����� ����
library(plyr)
arrange(v123, v1, desc(v2), v3)


















