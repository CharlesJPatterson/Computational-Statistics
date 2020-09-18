#Problem 1

library("dplyr")
install.packages("tidyverse")

#A
df <- read.csv(file.choose())

#B
dim(df)

#C
df %>%
  select(Id, Time1, Time2, Time3, Time4, Age)

#D
times <- df %>%
  select(Time1, Time2)

#E
old <- filter(df, Age > 30)

#F
time3 <- arrange(df, Time3)

#G
time4 <- arrange(df, Time4)

#H
df <- select(df, -Time4)

#Problem 2
#A
install.packages("nycflights13")

#B
library("nycflights13")
flights
#?flights

#C
July15 <- filter(flights, month == 7 & day == 15)
July15

#D
DFW <- subset(flights, dest = "DFW")

#E
late <- arrange(flights, dep_delay)
late

#F
schedule <- flights %>%
  select(dep_time, arr_time, dep_delay_time)

#G 
flights %>%
  mutate(speed = distance / (air_time * 60))