getwd()
setwd("E:\\Recommender System\\Dataset\\RStudent Dataset")
Data1 <- read_excel("Testing1.xlsx")
View(Data1)
x <- Data1[][5:6]
print(x)
Data <- read_excel("Data.xlsx")
View(Data)
y <- Data[][3:4]
print(y)
(cl<- kmeans(y, 20, iter.max = 60, nstart = 1,
             algorithm = c("Hartigan-Wong", "Lloyd", "Forgy",
                           "MacQueen"), trace=FALSE))
plot(y, col = cl$cluster)
points(cl$centers, col = 1:5, pch = 8,cex=2)
library(class)
z <- knn(y,x,cl$cluster,k=20)
print(z)
 
