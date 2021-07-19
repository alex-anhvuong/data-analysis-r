library(nycflights13)
library(tidyverse)

# Load the flights dataset
flights
# class(flights)
# View(flights)

# Show all flights on January 1st
jan1 <- filter(flights, month == 1, day == 1)
nov_dec <- filter(flights, month %in% c(11,12))
df <- tibble(x = c(1, NA, 3))
#5.2.4
arr_delay_20 <- filter(flights, arr_delay >= 120)
dest_hou <- filter(flights, dest == "IAH" | dest == "HOU")
opr_UAD <- filter(flights, carrier %in% c("DL", "AA", "UA"))
dep_JAS <- filter(flights, month %in% c(7,8,9))
arrdl2_depdl0 <- filter(flights, arr_delay >= 120 & dep_delay <= 0)
depdl1_arr_early30 <- filter(flights, arr_delay <= -30 & dep_delay >= 60)
#
na_dep <- filter(flights, is.na(dep_time)) # Canceled flights
#

#5.3.1
na_to_start <- arrange(flights, desc(is.na(dep_time)))
most_delayed <- arrange(flights, dep_delay)
fastest_fl <- arrange(flights, air_time)
farthest_fl <- arrange(flights, desc(distance))
