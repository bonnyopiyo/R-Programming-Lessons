#Select Columns with select()
#select() allows you to rapidly zoom in on a useful subset using operations based on the
#names of the variables.
#select() is not terribly useful with the flight data because we only
#have 19 variables, but you can still get the general idea:

# Select columns by name
select(flights, year, month, day)

# Select all columns between year and day (inclusive)
select(flights, year:day)

# Select all columns except those from year to day (inclusive)
select(flights, -(year:day))

#select() can be used to rename variables
rename(flights, tail_num = tailnum)


############################################
###Add New Variables with mutate()##########
#mutate() always adds new columns at the end of your dataset so
#we’ll start by creating a narrower dataset so we can see the new vari‐
#ables.

flights_sml <- select(flights,
                      year:day,
                      ends_with("delay"),
                      distance,
                      air_time
)
mutate(flights_sml,
       gain = arr_delay - dep_delay,
       speed = distance / air_time * 60
)

# Note that you can refer to columns that you’ve just created:
  mutate(flights_sml,
         gain = arr_delay - dep_delay,
         hours = air_time / 60,
         gain_per_hour = gain / hours
  )

# If you only want to keep the new variables, use transmute():
  transmute(flights,
            gain = arr_delay - dep_delay,
            hours = air_time / 60,
            gain_per_hour = gain / hours
  )
  
# Grouped Summaries with summarize()
#It collapses a data frame to a single row:
summarize(flights, delay = mean(dep_delay,
                                na.rm = TRUE))

  