#очистка памяти
rm(list=ls())
#Задание. Получите из данного вектора вектор в котором будет обратный порядок элементов
a<-seq(-8,10,.5);a
x=a[length(a):1];x
#Задание. Вставьте число 99 в середину данного вектора
y=c(a[1:round(length(a)/2)],99,a[(round(length(a)/2)+1):length(a)]);y
#Задание. Докажите, что arcos(cos(x))=x
x=0:3
y=acos(cos(x))
x==y

x=c(sin(10),log(5,8),log(3,exp(1)),log(38.6,10),cos(pi+1), exp(1)^(cos(0)),atan(+Inf))
names(x)=c("sin(10)","log(5,8)","ln3","lg(38.6)","cos(pi+1)","e^cos(0)","arctn(+Inf)");sort(x)
#Логические операции ! = not | = or & = and 
#объединени A U B
x=seq(-10,10,.01)
y=x[(x>-10 & x< -3) | (x>0 & x<6 & x!=3)]
#Факторы и функция summary() (в примере x = factor(“Mouse”))
f=c(rep("mouse",3),rep("rat",2),rep("fly",11))
f=rep(c("mouse","rat","fly"),c(3,2,11))
x=factor(f)
summary(x)
summary(f)
summary(1:10)
summary(1:10)[4]
#Задание посчитайте долю каждого нуклеотида в векторе содержащем последовательность ДНК
dna=factor(rep(c("T","G","C","A"),c(16,38,6,10)))
ratio=summary(dna)/sum(summary(dna));ratio
dna=factor(rep(c("T","G","C","A"),c(16,38,6,10)))
sample(dna) #Функция sample() Создает подвыборку из выборки, в том числе путем перемешивания sample: * mixing * generating
dna
#sample(dna,size=84, replace=FALSE) 
# подобный код выдаст ошибку, т.к. мы просим создать выборку больше исходника
# а вот следующий код будет работать, т.к. replace=TRUE генерирует выборки любого 
# размера исходя из пропопрций элемнтов данной выборки
sample(dna,size=84, replace=TRUE)
sampledna=sample(c("A","T","G","C"), size=10000,replace=TRUE)
ratio=summary(factor(sampledna))/length(sampledna)
ratio2=summary(factor(dna))/length(dna)
ratio
ratio2
#Функции union(x,y),intersect(x,y),setdiff(x,y) (#Выполняет объединение, пересечение, (асимметричную!) Разность, равенство и членство на двух векторах.)
x=1:10
y=6:14
union(x,y) 
intersect(x,y) 
setdiff(x,y)
setdiff(y,x)
#Функция cumsum() (Возвращает вектор, элементами которого являются кумулятивные суммы, произведения, минимумы или максимумы элементов аргумента)
cumsum(1:10)
#Задание. Создайте длинные последовательности с заданными пропорциями элементов
dna2=sample(c("A","T","G","G","G","C"), size=3826513,replace=TRUE)
ratio=summary(factor(dna2))/length(dna2)
ratio
# Создание длинной последовательности с заданными пропорциями элементов
dna2=sample(c("A","T","G","C"), size=3826513,prob=c(.5/3,.5/3,.5,.5/3),replace=TRUE)
ratio=summary(factor(dna2))/length(dna2)
ratio
##Таблицы
iris[iris$Species==c("setosa","virginica"),]
iris[iris$Species=="setosa" | iris$Species=="virginica",c("Petal.Length","Species")]
##Основные типы структур данных
# 1. vector	c()	i-position or logic
# 2. Factor	factor()	[] - position or logic
# 3. Matrix	matrix()	row,col;i- positional logical
# 4. List	list()	], $ \[i
# 5. dataframe	data.frame() $	,
# синтаксис и назночение каждой функции можно проверить через?функция
summary(factor(iris[(iris$Petal.Length>2 & iris$Petal.Length<6),"Species" ]))
y_func = function(p) 
{
  x=p^2
  y=x^3
  print("result")
  return(c(x,y))
  
}
my_func(2)
mathses = function(p,q)
{
  result = c(p+q,log(p+q,10),exp(p+q))
  names(result) = c("summ", "log","exp")
  return(result)
}
mathses(2,3)
# Проверки условий
mf = function(p)
{
  
  if (p>0)
  {
    x=log(p)
    return(x)
  }
  else
  {
    return(NULL)      
  }
}
mf(-1)
