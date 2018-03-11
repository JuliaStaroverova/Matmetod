#Линейная регрессия (Linear regression) — используемая в статистике регрессионная модель зависимости одной (объясняемой, зависимой) переменной y от другой или нескольких других переменных факторов, регрессоров, независимых переменных) x с линейной функцией зависимости.
rm(list=ls())
data(longley)
setwd("C:/rdata")
adat=read.csv("filename.csv", header=TRUE, sep=";", dec=",")# нет данных- нет файла
fit <- lm(data$ROSN ~ data$BRN )
summary(fit)
#model <- lm(data$y~data$x)
plot(fit)



#abline(model)
# fit model
#fit <- lm(Employed~., longley)
# summarize the fit
#summary(fit)
# make predictions
#predictions <- predict(fit, longley)
# summarize accuracy
#rmse <- mean((longley$Employed - predictions)^2)
#print(rmse)
#plot(fit)
