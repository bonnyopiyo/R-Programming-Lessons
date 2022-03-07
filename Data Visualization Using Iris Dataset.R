data("iris")
plot(iris$Sepal.Length, iris$Petal.Length)
plot(iris$Sepal.Width, iris$Petal.Width)


qqnorm(iris$Sepal.Length)
qqline(iris$Sepal.Length)

boxplot(iris$Sepal.Length ~ iris$Species)
boxplot(iris$Sepal.Width ~ iris$Species)

hist(iris$Sepal.Length, 
     col = 'darkblue', border = 'yellow')

hist(iris$Sepal.Width, 
     col = 'dark red', border = 'green')

library(ggplot2)
Hist <- ggplot(data = iris, aes(x = Sepal.Length))+
  geom_histogram(bins = 10, color = 'black',
                 fill = 'white')
 Hist + coord_flip()
 
 ggplot(data = iris, aes(x= Sepal.Width, fill= Species))+
   geom_histogram(bins = 10, bandwidth = 0.30)+
   facet_wrap(~Species)

 #Density Plot
 #Density plot of the variable Sepal.Length
 ggplot(data =  iris, aes(x= Sepal.Length))+
   geom_density()
 
 #Density plot of the variable Petal.Length
 ggplot(iris, aes(x = Petal.Length)) +
   geom_density()
 
 #Density plot of the variable Sepal.Length grouped
 #by the factor “Species”
 ggplot(iris, aes(x = Sepal.Length, 
                  color = Species)) +
   geom_density()
 
#Density plot of the variable Petal.Length grouped
# by the factor “Species”
 ggplot(iris, aes(x = Petal.Length, 
                  color = Species)) +
   geom_density()
 
 
 
 
 
 
 
 
 
 
 
 

