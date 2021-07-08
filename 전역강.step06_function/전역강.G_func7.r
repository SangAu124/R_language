# 데이터 객체 탐색 함수

mtcars

# 1. str(객체명) : 데이터 구조, 변수 개수, 변수명, 관측치개수, 관측치 미리보기
str(mtcars)  

# 2. head, tail : 상위6개 하위6개의 관측치 미리보기
head(mtcars)
tail(mtcars)

# 3. dim() : 데이터 객체의 차원
dim(mtcars)

# 4. length() : 데이터객체의 구성 요소의 개수 -->변수의 개수
length(mtcars)
length(mtcars$hp) # 특정 요소의 관측치의 개수

# 5. names() : 데이터객체의 구성요소 이름(변수명)
names(mtcars)

# 6. class() : 속성 --> 자료구조
class(mtcars)


sapply(mtcars, class)
# mtcars의 모든 변수에 class()를 적용하셈...의 의미
# ==> 11개 개별 변수의 속성(자료형)이 나타나게 됨


# 데이터 프레임 활성화, 비활성화 함수...


# 1. 데이터프레임$변수명    입력 개수가 적은 경우는 편리

# mean(mpg) # error

mean(mtcars$mpg)

tf1 <- (max(mtcars$mpg) - mtcars$mpg)/(max(mtcars$mpg) - min(mtcars$mpg))
tf1

# 2. with(데이터프레임, 명령문) : 반복되는 데이터셋을 작성하는 함수...

tf2 <- with(mtcars, (max(mpg) - mpg)/(max(mpg) - min(mpg)))
tf2

# 3. attach() : 공통적으로 사용되는 데이터프레임을 지정(활성롸)할 때
#    detach() : 사용하던 데이터프레임을 해제 할 때

attach(mtcars)

tf3 <- (max(mpg) - mpg)/(max(mpg) - min(mpg))
tf3

hist(mpg)

summary(mpg)

plot(hp, mpg)

detach(mtcars)












