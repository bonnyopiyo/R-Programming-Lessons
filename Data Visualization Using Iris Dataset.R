data("iris")
plot(iris$Sepal.Length, iris$Petal.Length)
plot(iris$Sepal.Width, iris$Petal.Width)


qqnorm(iris$Sepal.Length)
qqline(iris$Sepal.Length)
