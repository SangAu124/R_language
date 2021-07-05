# 리스트(list)와 팩터(factor)
# list : 1차원 다중형 데이터(여러 자료형을 동시에 포함할 수 있는 데이터 세트)

# 1. 리스트 생성
list1 <- list(c(1, 2, 3), "Hello") # 숫자형, 문자형 벡터로 구성된 list1 생성
list1

str(list1)

list2 <- list(1:3, c("James", "Litar"))
# 첫번째 멤버는 크기3의 numeric vector,
#두번째 멤버는 크기2의 charcter vector
list2

#리스트의 멤버에 이름 정의가 가능
list2 <- list(id = 1:3, names = c("James", "Litar"))
list2


#2. 리스트의 요소에 접근
list2[[1]] # [1] 1 2 3 
list2[[2]] # [1] "James" "Litar"

list2$id
list$names

# sliced list : list에서 x[i]형태를 적영하면 멤버를 엑세스 하는게 아니라
# 인덱스에 해당하는 멤버를 모아서 새로운 리스트를 구성해서 리턴해줌

list2[1]
list2[2]

# 3. 리스트 연산
list3 <- list() # 초기에 크기가 0인 리스트 생성(null list)
list <- append(list3, "1")
list3 <- append(x, list(c(1, 2, 3))) # 데이터 추가는 append()사용
list3 <- append(x, "result")
list3

#---------------------------------------------------------------------------
# factor : 팩터는 벡터에 추가 정보가 더해진것
# 추가 정보는 레벨이라고함.
# 레벨은 벡터의 값중에서 겹쳐지지 않는 값의 기록으로 이루어짐

x <- c(5, 12, 23, 12)
fa_x <- factor(x)
fa_x


str(fa_x)
# Factor v/3 levels "5", "12", "23" : 1 2 3 2
# fa_x의 첫번째 값 5 : 팩터는 5, 레벨1의 값

#------------------------------------------------------------------------------

a <- c(1 : 10)
b <- 21:25

list4 <- list(값1 = a, 값2 = b, descript = "예제")
list4

length(list4)
mode(list4)
names(list4)

str(list4) # 리스트 구조 확인

#--------------------------------------------------------------------------------
#문제 1.
# $리스트1
# [1] 1 2 3 4 5 6 7 8 9 10

list5 <- list(리스트1 = c(1:10))
list5

#문제 2.
# $리스트1
# [1] 1 2 3 4 5 6 7 8 9 10

# $리스트2
# [2] 1 2 3 4 5 6 7 8 9 10

list6 <- list(리스트1 = c(1:10), 리스트2 = c("가 나 다"))


# 문제 3. 아래 결과와 같이 나오도록 코드를 만들어주세요(추가)
#$리스트1
#[1] 1 2 3 4 5 6 7 8 9 10

# $리스트2
#[1] "가 나 다"

#[[3]]
#[[3]][[1]]
#[1] TRUE TRUE FALSE TRUE

list7 <- list(리스트1 = c(1:10), 리스트2 = c("가 나 다"), list(c(TRUE, TRUE, FALSE, TRUE)))
list7






