rm(list=ls())
setwd("C:/rdata")
adat=read.csv("файл с таблицей.csv", header=TRUE, sep=";", dec=",") adat
#размерность
dim(adat)
#имена переменных
names(adat)
#среднее для каждой переменной
mean(переменная_1,переменная_2)