# do.call() ���������� �� ������� �ʴ� �Լ�

do.call("hello.person", args = list(first = "Harry", last = "Potter")) # ���ڿ�������
# do.call()�� ����� �Լ��� �̸��� ���ڿ��̳� ��ü�� �����ϰ�
# ����Ʈ�� �̿��Ͽ� �Լ��� ���ڸ� �����ؼ� �Լ��� ���� �� �� ����

do.call(hello.person, args = list(first = "Harry", last = "Potter")) # ��ü�� ����

#-----------------------------------------------------------------------------

run.this <- function(x, func = mean)
{
  do.call(func, args = list(x))
}

run.this(1:10)
run.this(1:10, sum)
run.this(1:10, sd)

















