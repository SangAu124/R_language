# 함수의 인자

# 치환 
name <- "harry"
sprintf("hello %s", "Harry")

sprintf("hello %s, where is %s?", "Harry", "Ronald")

# 함수에 연결
hello.person <- function(name){
  print(sprintf("hello %s", name))
}

hello.person("Harry")
hello.person("Pororo")
hello.person("Hermione")

# 두개의 매개변수 사용

hello.person <- function(first, last){
  print(sprintf("hello %s %s", first, last))
}

# 1. 위치로 접근, by position
hello.person("Harry", "Potter")

# 2. 이름으로 접근, by name
hello.person(first = "Harry", last = "Potter")

# 3. 순서를 바꿔서 접근, the other order
hello.person(last = "Potter", first = "Harry")

# 4. 이름의 일부분 일치, 조심...
hello.person(fir = "Harry", l = "Potter")




















