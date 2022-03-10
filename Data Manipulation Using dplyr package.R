library(nycflights13)
library(tidyverse)
#More about the flights dataset
?flights
flights
view(flights)

#Pick observations by their values (filter())
#Reorder the rows (arrange())
#Pick values by their names (select())
#Create new variables from the existing ones (mutate())
#Collapse many values down to a single summary (summarize())

#Pick observations by their values (filter())
#We can select all flights on Jan 1 with:
(jan1 <- filter(flights, month == 1, day == 1))
view(jan1)

#Select all flights on Dec 25:
(dec25 <- filter(flights, month == 12, day==25))
view(dec25)

filter(flights, month == 11 | month == 12)
#The above code works the same as below
(nov_dec <- filter(flights, month %in% c(11,12)))

#Missing
x <- NA
y <- NA
x == y

#Determine if a value is missing
is.na(x)

df <- tibble(x = c(1, NA, 3))
filter(df, is.na(x) | x>1)

#No 1
(quiz_1 <- filter(flights, arr_delay >= 120))
view(quiz_1)
#No2
filter(flights, dest %in% c("IAH", "HOU"))

#Reorder the rows (arrange())
arrange(flights, year, month, day)
#descending order
arrange(flights, desc(year, month, day))
arrange(flights, desc(arr_delay))

missing <- arrange(flights, desc(is.na(flights)))
view(missing())

DepDELAY <- arrange(flights, desc(dep_delay))
View(DepDELAY)

fasstest <- arrange(flights, air_time)
view(fasstest)


