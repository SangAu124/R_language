# 집계 함수


require(ggplot2)

install.packages("ggplot2") # 패키지 설치
data(diamonds, package = "ggplot2") # 패키지 로딩

# diamonds
# head(diamonds)
# tail(diamonds)


# aggregate()를 호출 할때 포뮬러를 사용
# 포뮬러 : 틸드를 사이에 두고 왼쪽과 오른쪽으로 구문
#          왼쪽에는 계산하고자 하는 대상이 되는 변수가 오고
#          오른쪽에는 그룹을 나눌때 기준이 되는 변수가 옴...

# 1. 다이아몬드의 cut 타입에 따른 price의 평균
aggregate(price ~ cut, diamonds, mean)


# 2. 어떤 데이터를 두개이상의 변수를 이용해서 그룹화 하려면 
# 추가변수의 포뮬러의 오른쪽에 + 기호를 사용하여 추가
aggregate(price ~ cut + color, diamonds, mean)


# 3. 두개의 변수에 대하여 계싼을 수행하려는 경우 폼뮬러의 왼쪽에
# cbind를 사용해서 해당 변수를 묶으면 됨
aggregate(cbind(price, carat) ~ cut, diamonds, mean)

# 4. 두개위 변수에 대하여 그룹화 두개이상의 변수에 대하여 계산을 수행하려면
# 아래와 같이 사용하면 된다.
aggregate(cbind(price, carat) ~ cut + color, diamonds, mean)

