# llply : ����Ʈ�� �� ����� �հ���� ����Ҷ� ���

lst <- list(A = matrix(1:9, 3), B = 1:5, C = matrix(1:4, 2), D = 2)

typeof(lapply(lst, sum)) # list�� ����

typeof(llply(lst, sum)) # list�� ����

# �����
identical(lapply(lst, sum), llply(lst, sum))

is.vector(sapply(lst, sum))

is.vector(laply(lst, sum))


