# 확률 분포는 통계의 중심

install.packages("tidyverse")
library(tidyverse)

# 1. 정규분포(가우스 분포) : 분포의 모양이 종모양

# 평균이 0, 표준편차가 1인 정규분포 (표준정규)를 따르는 10개의 난수생성

rnorm(n = 10)

# 평균이 100, 표준편차가 20인 분포에서 10개의 난수 생성
rnorm(n = 10, mean = 100, sd = 20)

# 확률 밀도는 특정한 값에서의 확률값 ==> dnorm()
rndNorm10 <- rnorm(10)
dnorm(rndNorm10)

# dnorm() 특정 숫자가 발생하는 확률을 반환
# 수학적으로 연속분포에서는 어떤 값에 대한 확률값을 계산하는 것이 불가능
# 이것은 호가률에대한 추정값

# dnorm()도 평균과 표준편차 지정가능
rndNorm <- rnorm(3000)

# 분포(확률 밀도) 계산
rndDensity <- dnorm(rndNorm)

rndDensity

# 티블 데이터셋 구성
rndTable <- tibble(rndNorm, rndDensity)

#PLOT
ggplot(rndTable, aes(x = rndNorm, y = rndDensity)) +
  geom_point() + labs(x = "Random Normal Variables",
                      y = "Density")











