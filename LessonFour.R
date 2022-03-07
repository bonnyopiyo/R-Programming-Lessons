#Position Adjustments
library(tidyverse)

ggplot(data = diamonds)+
  geom_bar(mapping = aes(x=cut, color = cut))

ggplot(data = diamonds)+
  geom_bar(mapping = aes(x= cut, fill = cut))
?diamonds

ggplot(data = diamonds)+
  geom_bar(mapping = aes(x=cut, fill= clarity))
# The stacking is performed automatically by the position adjustment
#specified by the position argument.

ggplot(data = diamonds)+
  geom_bar(mapping = aes(x = cut, fill= clarity), 
           position = "dodge")


#Coordinate systems
#1. coordinate flip
ggplot(data = mpg, mapping = aes(x = class, y= hwy))+
  geom_boxplot()+
  coord_flip()
#2. coordinate quickmap
nz <- map_data("nz")

ggplot(nz, aes(long, lat, group = group))+
  geom_polygon(fill = 'white', color = 'black')+
  coord_quickmap()
#coordite polar

bar <- ggplot(data = diamonds)+
  geom_bar(mapping = aes(x= cut, fill= cut),
           show.legend = FALSE, 
           width = 1
           )+
  theme(aspect.ratio = 1)+
  labs(x = NULL, y= NULL)

bar+ coord_flip()
bar+ coord_polar() #Coxcomb chart

#Polar coordinates reveal an interesting 
# connection between a bar chart and a Coxcomb chart




