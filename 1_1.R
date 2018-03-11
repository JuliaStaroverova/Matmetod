rm(list=ls())
iris[iris$Species==c("setosa","virginica"),]
names(iris)

a=iris[iris$Species=="setosa" | iris$Species=="virginica",c("Sepal.Length")]
  A=mean(a)
  #A
b=iris[iris$Species=="setosa" | iris$Species=="virginica",c("Sepal.Width")]
  B=mean(b)
  #B
c=iris[iris$Species=="setosa" | iris$Species=="virginica",c("Petal.Length")]
  C=mean(c)
  #C
d=iris[iris$Species=="setosa" | iris$Species=="virginica",c("Petal.Width")]
  D=mean(d)
  #D
x=c(A,B,C,D)
names(x)<-c("Sepal.Length", "Sepal.Width",  "Petal.Length", "Petal.Width")
list(sort(x))


