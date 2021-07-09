# rda 파일로 저장
ID <- c(1, 2, 3, 4, 5)
SEX <- c("F", "M", "F", "M", "F")

data_ex <- data.frame(ID = ID, SEX = SEX)
class(data_ex)

# 저장
save(data_ex, file = "out/data_ex.rda") # 폴더를 만들어주고 실행

# ---------------------------------------------------------------------------

#rda 파일 불러오기

load("out/data_ex.rda") # 불러올때 저장할 변수 필요없음, 자동으로 변수들록
View(data_ex)

#-------------------------------------------------------------------------

#csv 저장

ID <- c(1, 2, 3, 4, 5)
SEX <- c("F", "M", "F", "M", "F")

data_ex <- data.frame(ID = ID, SEX = SEX)
write.csv(data_ex, file = "out/data_ex.csv")

#-------------------------------------------------------------------------
#txt 저장

ID <- c(1, 2, 3, 4, 5)
SEX <- c("F", "M", "F", "M", "F")

data_ex <- data.frame(ID = ID, SEX = SEX)
write.csv(data_ex, file = "out/data_ex.txt")
write.csv(data_ex, file = "out/data_ex.txt", quote = T) # quote : 따옴표 유무
















