# do.call() 유용하지만 잘 사용하지 않는 함수

do.call("hello.person", args = list(first = "Harry", last = "Potter")) # 문자열로지정
# do.call()을 사용해 함수의 이름을 문자열이나 객체로 지정하고
# 리스트를 이용하여 함수의 인자를 전달해서 함수를 실행 할 수 있음

do.call(hello.person, args = list(first = "Harry", last = "Potter")) # 객체로 지정

#-----------------------------------------------------------------------------

run.this <- function(x, func = mean)
{
  do.call(func, args = list(x))
}

run.this(1:10)
run.this(1:10, sum)
run.this(1:10, sd)

















