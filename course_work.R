#Линейная регрессия (Linear regression) — используемая в статистике регрессионная модель зависимости одной (объясняемой, зависимой) переменной y от другой или нескольких других переменных факторов, регрессоров, независимых переменных) x с линейной функцией зависимости.
rm(list=ls())
setwd("C:/rdata/Group_124/JuliaStar/Matmetod")
adat=read.csv("eddypro.csv", header=TRUE, sep=";", dec=",")
#names(adat)
str(adat)
adat[adat == -9999] = NA
#adat
#fit <- lm(adat$co2_flux ~ adat$klock )
#summary(fit)
#plot(fit)
#отборка по времени
  tabfinal1 <- adat[adat$klock <= 16, ]
  tabfinal1$klock
  tabfinal<-tabfinal1[tabfinal1$klock > 12,]
  tabfinal$klock
#построение модели
fit<-lm(tabfinal$co2_flux~tabfinal$klock)
summary(fit)
plot(fit)

