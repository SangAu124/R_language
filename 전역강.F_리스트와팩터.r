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




















