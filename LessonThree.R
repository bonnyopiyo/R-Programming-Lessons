#Facets
?mpg
library(tidyverse)
ggplot(data = mpg)+
  geom_point(mapping = aes(x= displ, y = hwy))+
  facet_wrap(~ class, nrow = 2)
#for discrete case and when using one variable

ggplot(data = mpg)+
  geom_point(mapping = aes(x= displ, y = hwy))+
  facet_grid(drv ~ cyl)
#using more than one variable 

?mpg
ggplot(data = mpg)+
  geom_smooth(mapping = aes(x= displ, y = hwy,color = drv))


#for categorical variables
ggplot(data = mpg, mapping = aes(x= displ, y = hwy))+
  geom_point(mapping = aes(color = class))+
  geom_smooth()

#Statistical Transfromations
?diamonds

#Graph of count and cut
ggplot(data = diamonds)+
  geom_bar(mapping = aes(x= cut))
view(diamonds)


#Graph of prop and cut
ggplot(data = diamonds)+
  geom_bar(mapping = aes(x = cut, y = ..prop.., group = 1))

ggplot(data = diamonds)+
  stat_summary(
    mapping = aes(x= cut, y = depth),
    fun.min = min,
    fun.max = max,
    fun.y = median
  )
?stat_bin




