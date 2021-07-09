# basic visualization

install.packages("ggplot2")
library(ggplot2)
data("diamonds")

# 1. 베이스 히스토그램

# 히스토그램은 데이터를 계급으로 구분한뒤 바의 높이가
# 계급에 속한 관찰값

# 계급의 크기와 개수에 민감하기 때문에 여러번 그려서 좋은 그래프를 찾아야함

#캐럿 변수에 대한 히스토그램
hist(diamonds$carat, main = "캐럿 히스토그램", xlab = "캐럿", ylab = "빈도")
# main : 제목
# xlab, ylab : 축 제목

#------------------------------------------------------------------------------

# 2. base scatter plot 산점도

# 두개의 변수들 간의 관계를 볼때 사용

#다이아몬드 데이터셋에서 가격과 캐럿의 관계를 포뮬식으로 표현
plot(price ~ carat, data = diamonds)

# 포뮬러 말고 일반 표현법
plot(diamonds$carat, diamonds$price)

#------------------------------------------------------------------------------

# 3. boxplot

boxplot(diamonds$carat)
# 상자 중간의 두꺼운 선 : 중앙값
# 상자 아래쪽의 경계 : 제 1사분위수
# 상자 위쪽의 경계 : 제 3사분위수
# 중앙 50%의 값이 상자 안에 배치
# 상자 밖 아래쪽 가로 선 : 최소값
# 상자 밖 위쪽 가로 선 : 최대값
# 최대값 위의 점 : 이상점, 이상치 --> 특이점.


#------------------------------------------------------------------------------

# *ggplot2
# 기본 문법 : 그래프를 그릴 대상을 dataset으로 입력
#             x 축과 y 축의 데이터를 지정
#             마지막으로 그래프의 형태를 지정

# ggplot(data = ds, aes(x = x1, y = x2)) + geom_XXX() +... --> 단일 그래프
# ggplot() + geom_XXX(data = xx, aes(x = x1, y = x2)) +... --> 여러그래프를 겹쳐서 사용할때


# 1. Histogram, Densities

ggplot(diamonds) + 
  geom_histogram(aes(x = carat))
# 히스토그램 : 데이터를 1차원 적으로 표현하는 것이기 때문에
#              변수 하나에 대해서 x축에 대응하는 에스테틱 매핑을 지정하면 됨

# 히스토그램 밀도곡선
ggplot(diamonds) +
  geom_density(aes(carat), fill = "red")

# 히스토그램이 계급에 속한 숫자를 디스플레이 하는 반면에 밀도곡선은
# 관심이 되는 변수를 따라서 이동하면서 해당하는 구간에서 해당 값들이
# 관찰되는 확률을 보여줌
# 히스토그램 : 이산변수에 가깝다
# 밀도곡선 : 연속변수에 가깝다

# 2. scatter plot
# ggplot으로 객체를 초기화후 aes()를 geom이 아닌 ggplot에 포함시켜 사용
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_point()

g <- ggplot(diamonds, aes(x = carat, y = price))
g + geom_point(aes(color = color))
# 데이터 값에 따라서 자동으로 결정

# g + facet_wrap() : 어떤 변수의 레벨에 따라 데이터를 세분화하고
# 세분화된 그룹에 따라 별도의 창으로 만들고 그것을 전체 플롯에 배치
g + facet_wrap(~color) + geom_point(aes(color = color))

# facet_grid()는 비슷하게 동작은 하지만 어떤 변수릐 모든 레벨을
# 하나의 행이나 열에 할당
g + geom_point(aes(color = color)) + facet_grid(cut~clarity)

# 다이아몬드의 색에 떄라서 facet화 된 히스토그램
ggplot(diamonds, aes(carat)) +
  geom_histogram(aes(color = color)) + 
  facet_wrap(~ color)

# 3. boxplot, violin plot

# 박스플롯은 y애스테틱만을 가진 1차원 그래프
ggplot(diamonds, aes(y = carat, x = 1)) +
  geom_boxplot()

# x애스테틱을 지정할 필요가 있으면 추가하면 됨 --> 여러개의 박스플롯
ggplot(diamonds, aes(y = carat, x = cut)) +
  geom_boxplot()


ggplot(diamonds, aes(y = carat, x = cut)) +
  geom_point(aes(color = color))

# geom_ 함수가 추가되는 순서에 따라 그래프의 모양이 바뀜

ggplot(diamonds, aes(y = carat, x = cut)) +
  geom_violin() +
  geom_point()


ggplot(diamonds, aes(y = carat, x = cut)) +
  geom_point() +
  geom_violin()

# 4. line 그래프
# 연도별 고용동향 데이터셋
ggplot(economics, aes(x = data, y = pop)) +
  geom_line()

# 꺽은 선 그래프는 연속된 변수에 적절한 표현 방식

#=============================================================================

# 루브리데잇 패키지 : 날짜 다루기 전문 패키지
install.packages("lubridate")
library(lubridate)

# date컬럼을 이용하여 year mouth 변수를 생성

economics$year <- year(economics$date)
economics$month <- month(economics$date)

# 데이터 서브세팅
econ2000 <- economics[economics$year >= 2000, ]

# 축 포메팅을 위한 패키지 로딩
library(scales)

# 플롯 초기화
g <- ggplot(econ2000, aes(x = month, y = pop))

# 선들을 색으로 코드화, year로 그룹화
g <- g + geom_line(aes(color = factor(year), group = year))
# group 옵션은 데이터를 지정한 그룹으로 세분화
# factor(year) ==> 이산현 컬러스케일

# 범례이름을 Year로 지정(이산형 컬러스케일의 이름)
g <- g + scale_color_discrete(name = "Year") 

# y 축의 포멧 (콤마를 이용해서 포맷을 지정)
g <- g + scale_y_continuous(labels = comma)

# 제목과 축 레이블 추가

g <- g + labs(title = "인구 동향", x = "월", y = "인구")
g

#----------------------------------------------------------------------------

# 테마 : 그래프 전체의 느낌을 바꿀 수 있어요
install.packages("ggthemes")
library(ggthemes)

g2 <- ggplot(diamonds, aes(x = carat, y = price))+ 
  geom_point(aes(color = color))

g2 + theme_economist() + scale_color_economist()
g2 + theme_excel_new() + scale_color_excel_new()
g2 + theme_tufte()
