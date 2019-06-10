# 저수준 작도 함수 
par(mar=c(1,1,1,1), mfrow=c(1,1))
plot(1:15)
abline(h=8)
rect(1,6,3,8)
arrows(1,1,5,5)
text(8,9,"TEXT")
title("THIS IS TEST", "SUB")
segments(2,2,3,3)
text(3,2,"테스트",srt=45)

View(iris) type=p plot(iris)
setosa <- group by.data.frame(iris)
write.csv(x = iris,
          file = "D:/workspace/TIL/R_Data_Analysis/Part4/iris.csv",
          row.names = F)
iris <- read.csv(file = "D:/workspace/TIL/R_Data_Analysis/Part4/iris.csv",
                   stringsAsFactors = F)

#1 
library(dplyr)
setosa <- filter(iris, Species == "setosa" )
versicolor <- filter(iris, Species == "versicolor" )
virginica <- filter(iris, Species == "verginica" )
=
setosa <- filter(iris, Species %in% c("setosa"))
versicolor <- filter(iris, Species %in% c("versicolor"))
virginica <- filter(iris, Species %in% c("virginica"))


par(mfrow=c(3,2))
plot(x = setosa$Sepal.Length, y = setosa$Sepal.Width, xlab="length", ylab="Width", main="Setosa's Sepal",
     xlim=c(4, 8.1), ylim=c(1.9, 4.5))
plot(x = setosa$Petal.Length, y = setosa$Petal.Width, xlab="length", ylab="Width", main="Setosa's Petal",
     xlim=c(0.8, 7), ylim=c(0, 2.6))
plot(x = versicolor$Sepal.Length, y = versicolor$Sepal.Width, xlab="length", ylab="Width", main="versicolor's Sepal",
     xlim=c(4, 8.1), ylim=c(1.9, 4.5))
plot(x = versicolor$Petal.Length, y = versicolor$Petal.Width, xlab="length", ylab="Width", main="versicolor's Petal",
     xlim=c(0.8, 7), ylim=c(0, 2.6))
plot(x = virginica$Sepal.Length, y = virginica$Sepal.Width, xlab="length", ylab="Width", main="virginica's Sepal",
     xlim=c(4, 8.1), ylim=c(1.9, 4.5))
plot(x = virginica$Petal.Length, y = virginica$Petal.Width, xlab="length", ylab="Width", main="virginica's Petal",
     xlim=c(0.8, 7), ylim=c(0, 2.6))




#2
attach(iris)
vec1 <- tapply(Sepal.Length, Species, mean);vec1
vec2 <- tapply(Petal.Length, Species, mean);vec2
vec3 <- tapply(Sepal.Width, Species, mean);vec3
vec4 <- tapply(Petal.Width, Species, mean);vec4
mat1 <- matrix(c(vec1,vec2,vec3,vec4),nrow=4);mat1


par(mfrow=c(1,2))
barplot(mat1, beside = T, main="품종별 평균치")
barplot(mat1, main="품종별 평균치")





#3
par(mfrow=c(3,4))
boxplot(setosa$Sepal.Length)
boxplot(setosa$Petal.Length)
boxplot(setosa$Sepal.Width)
boxplot(setosa$Petal.Width)
boxplot(versicolor$Sepal.Length)
boxplot(versicolor$Petal.Length)
boxplot(versicolor$Sepal.Width)
boxplot(versicolor$Petal.Width)
boxplot(virginica$Sepal.Length)
boxplot(virginica$Petal.Length)
boxplot(virginica$Sepal.Width)
boxplot(virginica$Petal.Width)
