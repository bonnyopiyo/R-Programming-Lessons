#Data Visualizations with ggplot2 library
install.packages('tidyverse')
library(tidyverse)
mpg
#Finding the number of rows and columns in mpg dataset
dim(mpg)
#To know more about the mpg dataset
?mpg

#Create a ggplot 
ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y= hwy, shape = class))

#Syntax for Graphing Template

# ggplot(data = <DATA>)+
#   <GEOM_FUNCTION>(mapping= aes(<MAPPINGS>))
#Exercises
# Run ggplot(data = mpg) what do you see?
ggplot(data = mpg)
#How many rows are in mtcars? How many columns?
dim(mtcars)
#What does the drv variable describe? Read the help for ?mpg to find out.
?mpg

#the type of drive train, where f = front-wheel drive, r = rear wheel drive, 4 = 4wd

#Make a scatterplot of hwy vs cyl.
ggplot(data = mpg)+
  geom_point(mapping= aes(x=hwy, y=cyl))
#What happens if you make a scatterplot of class vs drv. Why is the plot not useful?
ggplot(data = mpg)+
  geom_point(aes(class, drv))
#Because both variables are categorical.

ggplot(data = mpg) +
  geom_point(
    mapping = aes(x = displ, y = hwy), color = "blue")
#What’s gone wrong with this code? Why are the points not blue?

?mpg

ggplot(data = mpg)+
  geom_point(mapping = aes(x= displ, y= hwy, shape=cty))

ggplot(data = mpg)+
  geom_point(mapping = aes(x= displ, y= hwy, color=displ<5))


