# �Լ��� ����

# ġȯ 
name <- "harry"
sprintf("hello %s", "Harry")

sprintf("hello %s, where is %s?", "Harry", "Ronald")

# �Լ��� ����
hello.person <- function(name){
  print(sprintf("hello %s", name))
}

hello.person("Harry")
hello.person("Pororo")
hello.person("Hermione")

# �ΰ��� �Ű����� ���

hello.person <- function(first, last){
  print(sprintf("hello %s %s", first, last))
}

# 1. ��ġ�� ����, by position
hello.person("Harry", "Potter")

# 2. �̸����� ����, by name
hello.person(first = "Harry", last = "Potter")

# 3. ������ �ٲ㼭 ����, the other order
hello.person(last = "Potter", first = "Harry")

# 4. �̸��� �Ϻκ� ��ġ, ����...
hello.person(fir = "Harry", l = "Potter")




















