rm(list=ls())
setwd("C:/rdata")
adat=read.csv("eddypro.csv", header=TRUE, sep=";", dec=",")
adat
dim(adat)
names(adat)
