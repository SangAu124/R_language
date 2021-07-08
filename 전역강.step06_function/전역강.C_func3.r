# plyr 패키지 -- 해들리 위컴
# 함수      입력타입        출렵타입
# ddply     데이터프레임    데이터프레임
# llply     리스트          리스트
# aaply     배열/벡터/행렬  배열/벡터/행렬
# dlply     데이터프레임    리스트
# daply     
# d_ply     데이터프레임    node..(for side effect)
# laply
# ldply
# l_ply
# adply
# alply
# a_ply

install.packages("plyr")
library(plyr)

# 1. ddply()
# 데이터프레임을 취해서 특정 변수별로 데이터를 세분한 후
# 원하는 함수를 적용을 시키고 하나의 데이터프레임을 출력

# head(baseball)
# tail(baseball)
# 안타 h, 사구 bb, 데드볼 hbp, 타수 ab, 희생플라이 sf

# 1954년 이전의 선수 기록에서 희생플라이 sf는 0이 되어야함..
# NA로 표현 되는 값늘은 0 으로 바꾸어서 사용..

# 서브세팅[] ==> ifelse 보다 빠름
baseball$sf[baseball$year<1954] <- 0

any(is.na(baseball$sf))

# 몸에 맞는 공이 NA인 경우 0 으로 처리
baseball$hbp[is.na(baseball$hbp)] <- 0

any(is.na(baseball$sf))


# 한 시즌 50타석 미만의 선수는 제외
baseball <- baseball[baseball$ab >= 50, ]
baseball

# 출루율 계산
baseball$OBP <- with(baseball, (h + bb + hbp) / (ab + bb + hbp + sf))
tail(baseball)
# with() : dataframe의 변수에 대해서 앞에 데이터프레임 이름을 명시하지 않아도
# 사용할 수 있게 해줌. baseball$h를 h라고 적으면 됨...


baseball


# 
dbp <- function(data){
  c(OBP = with(data, sum(h + bb + hbp) / sum(ab + bb + hbp + sf)))
}

# ddply() 선수별 경력기간 동안 출루율 계산
careerOBP <- ddply(baseball, .variables ="id", .fun = obp)
#            ddply(데이터, 데이터를 그룹 지을 변수명, 사용할 함수)
head(carrerOBP)


# 결과(careerOBP)를 출루율에 대해 정렬
careerOBP <- careerOBP[order(careerOBP$OBP, decreasing = TRUE),]
head(carrerOBP, 10) # 상위 10위권 출루율을 가진 선수의 출루율

#---------------------------------------------------------------------------
# order(), sort()

v1 <- c(40, 30, 50, 50, 90, 40, 50)
v2 <- c(5100, 6500, 2000, 2000, 9000, 4500, 3000)
v3 <- c("A", "B", "A", "B", "A", "A", "B")
v123 <- data.frame(v1, v2, v3)
v123

# order() : 데이터프레임 정렬

order(v1)

v1[order(v1)]

# sort()
sort(v1) # 오름차순

sort(v1, decreasing = TRUE) # 내림림차순

# 데이터프레임 정렬
rm(v1, v2, v3)
attach(v123)


v123_order <- v123[order(v1, -v2, v3),]
v123_order

# 데이터프레임 정렬은 행단위로 정렬
# 동일한 값을 만나는 경우 다음 컬럼에 대하여 동일한 값을 만난 구간만 정렬

# plry 패키지의 arrange()를 이용한 정렬도 결과는 같음
library(plyr)
arrange(v123, v1, desc(v2), v3)


















