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














