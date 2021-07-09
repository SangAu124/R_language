# 외부 데이터 불러오기
# 외부 데이터 유형: txt, csv, excel

read.table("dist/EmployeeSales.txt") # error

read.table("dist/EmployeeSales.txt", TRUE, sep = ",")

read.table("dist/EmployeeSales.txt",sep = ",", fill = T) # 결측값을 NA로 지정

read.table("dist/EmployeeSales.txt",sep = ",", fill = T, fileEncoding = "UTF-8")
# 한글 출력

# fileEncoding : 저장, Encoding : 읽음


