#очистка памяти
rm(list=ls())
#построение график в цвете
plot(density(rnorm(100)),col="red")
#задание и вывод переменной
x=5;x
y<-6;y
assign("z",3);z
#Команды и базовые функции "function c()" задает переменоой несколько значений
x<-c(1,3,6,7);x
#типы векторов (numerical, character,logical)
char<-c("8","edge","turn8k");char
logic<-c(TRUE,FALSE,TRUE,FALSE);logic
#Динамическая типизация Приоритет Char->integer->Logic
dynam<-c(8,"dds", TRUE);dynam
dynam<-c(1,0,1,1,TRUE);dynam
#Функции x=function(arg1,arg2,…) в данном примере Х-переменнаяб число после запятой база по которой вычисляется логарифм, положительное или комплексное число, по умолчанию е=ехр(1)
log(x,5)
log(base=5,x)
# логические операции
x=3;x
x<5
x>5
x==3
# МАТЕМАТИЧЕСКИЕ
x^10
x=10/(5-5);x
#Правила повтора векторов
x<-c(2,4,5,3,-4,0)
x*5
y<-c(5,3)
x*y
z<-c(1,2,3,4)
x*z
# длинна вектора
length(x)
#Больше базовых функций log(), mean(), min(), max(), sum(), prod(), abs()
x<-c(3,4,6,-7,8)
mean = sum(x)/ length(x);mean
#Последовательности
x=2:10
y=5:1
z=-5:10
w=-5:-10
x;y;z;w
#Последовательности seq(from=,to=,by=) (Генерация регулярных последовательностей.от=, до=, шаг=)
z=seq(2,5,.5)
x=seq(3,9.1,.1)
y=seq(9,3,-.2)
length(x)
length(y)
x*y
#Последовательности rep(x, times=) (репликация последовательности. где х - вектор, включая список, times - число повторений) 
x=c("A","B","C")
rep(x,4)
#Логические вектора mode(x)
x<-1:10
y<-x<=-5
mode(x)
mode(y)
mode(mode(x))
#Индексация векторов
x=1:20
x[5] #выводитзначение в позиции в векторе
x[0]
x[5:9]#выводитзначение в позиции в векторе c.. по..
x[c(3,7,8,9,20)]
x[-19]
x[-(1:6)]
x[x>10]
x[TRUE]
y=c(TRUE,FALSE)
x[y]
#Добавление элементов к вектору
vector<-c();vector
v2<-c(TRUE,FALSE,TRUE,TRUE,FALSE,TRUE);v2
vector=c(v2,vector);vector
vector=c(F,vector);vector
x=1:3
x=c(5,x);x
#Имена элементов векторов
x=1:5;names(x)
names(x)<-c("Первый","Второй","Третий","Четвертый","Первый");names(x)
x["Первый"]
x["Третий"]*2
#Свойства векторов length() names() mode()
log(3) == log(3, base=exp(1))
x=seq(5,100,.1)
x[length(x)]
#Функции sort и order
x<-c(-10,2,78,34,-98,23,0,-8);x
order(x)
sort(x)
sort(x) == x[order(x)]
