# �ܺ� ������ �ҷ�����
# �ܺ� ������ ����: txt, csv, excel

read.table("dist/EmployeeSales.txt") # error

read.table("dist/EmployeeSales.txt", TRUE, sep = ",")

read.table("dist/EmployeeSales.txt",sep = ",", fill = T) # �������� NA�� ����

read.table("dist/EmployeeSales.txt",sep = ",", fill = T, fileEncoding = "UTF-8")
# �ѱ� ���

# fileEncoding : ����, Encoding : ����


