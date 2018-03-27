rm(list=ls())
setwd("C:/rdata/Group_124/JuliaStar/Matmetod")
library(foreign)
library(car)
adat=read.csv("eddypro.csv", header=TRUE, sep=";", dec=",")
adat[adat == -9999] = NA
names(adat)
adat$date
fit<-lm(co2_flux~ date + klock,data=adat)
summary(fit)
plot(fit)
#Доверительные интервалы
confint(fit)



