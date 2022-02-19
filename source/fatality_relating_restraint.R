library("dplyr")
library("readr")
library("ggplot2")
Person2017<- read_csv("../data/Carccident/Fatal_vehicle_crashes/FARS2017NationalCSV/Person.CSV")
Person2018 <- read_csv("../data/Carccident/Fatal_vehicle_crashes/FARS2018NationalCSV/Person.CSV")
Person2019 <- read_csv("../data/Carccident/Fatal_vehicle_crashes/FARS2019NationalCSV/Person.CSV")

View(Person2019)
View(Person2018)
View(Person2017)

# the died at scene rate for not using restraint system in 2017
num_total_norest2017 <- Person2017 %>%
  select("REST_USENAME", "DOANAME") %>%
  filter(REST_USENAME == "None Used / Not Applicable")%>%
  nrow()

num_notuse_died_at_scene2017 <- Person2017 %>%
  filter(REST_USENAME == "None Used / Not Applicable", DOANAME == "Died at Scene")%>%
  nrow()
num_notuse_died_at_scene2017

norest_deathrate2017 <- num_notuse_died_at_scene2017 / num_total_norest2017
norest_deathrate2017

# the died at scene rate for using Shoulder and Lap Belt in 2017 

num_total_use_belt2017 <- Person2017 %>%
  filter(REST_USENAME == "Shoulder and Lap Belt Used")%>%
  nrow()
num_total_use_belt2017

num_use_belt_died_at_scene2017 <- Person2017 %>%
  filter(REST_USENAME == "Shoulder and Lap Belt Used", DOANAME == "Died at Scene")%>%
  nrow()
num_use_belt_died_at_scene2017

use_belt_deathrate2017 <- num_use_belt_died_at_scene2017 / num_total_use_belt2017
use_belt_deathrate2017

# the died at scene rate for using Booster Seat in 2017

num_total_use_booster_seat2017 <- Person2017 %>%
  filter(REST_USENAME == "Booster Seat")%>%
  nrow()
num_total_use_booster_seat2017

num_use_booster_seat_died_at_scene2017 <- Person2017 %>%
  filter(REST_USENAME == "Booster Seat", DOANAME == "Died at Scene")%>%
  nrow()
num_use_booster_seat_died_at_scene2017

use_booster_seat_deathrate2017 <- num_use_booster_seat_died_at_scene2017 / num_total_use_booster_seat2017
use_booster_seat_deathrate2017

# the died at scene rate for Restraint Used(Type Unkown) in 2017

num_total_use_unknown_restraint2017 <- Person2017 %>%
  filter(REST_USENAME == "Restraint Used - Type Unknown")%>%
  nrow()
num_total_use_unknown_restraint2017

num_use_unknown_restraint_died_at_scene2017 <- Person2017 %>%
  filter(REST_USENAME == "Restraint Used - Type Unknown", DOANAME == "Died at Scene")%>%
  nrow()
num_use_unknown_restraint_died_at_scene2017

use_unknown_restraint_deathrate2017 <- num_use_unknown_restraint_died_at_scene2017 / num_total_use_unknown_restraint2017
use_unknown_restraint_deathrate2017

# the died at scene rate for not using restraint system in 2018
num_total_norest2018 <- Person2018 %>%
  filter(REST_USENAME == "None Used / Not Applicable")%>%
  nrow()
num_total_norest2018

num_notuse_died_at_scene2018 <- Person2018 %>%
  select("REST_USENAME", "DOANAME") %>%
  filter(REST_USENAME == "None Used / Not Applicable", DOANAME == "Died at Scene")%>%
  nrow()
num_notuse_died_at_scene2018

norest_deathrate2018 <- num_notuse_died_at_scene2018 / num_total_norest2018
norest_deathrate2018

# the died at scene rate for using Shoulder and Lap Belt in 2018

num_total_use_belt2018 <- Person2018 %>%
  filter(REST_USENAME == "Shoulder and Lap Belt Used")%>%
  nrow()
num_total_use_belt2018

num_use_belt_died_at_scene2018 <- Person2018 %>%
  filter(REST_USENAME == "Shoulder and Lap Belt Used", DOANAME == "Died at Scene")%>%
  nrow()
num_use_belt_died_at_scene2018

use_belt_deathrate2018 <- num_use_belt_died_at_scene2018 / num_total_use_belt2018
use_belt_deathrate2018

# the died at scene rate for using Booster Seat in 2018

num_total_use_booster_seat2018 <- Person2018 %>%
  filter(REST_USENAME == "Booster Seat")%>%
  nrow()
num_total_use_booster_seat2018

num_use_booster_seat_died_at_scene2018 <- Person2018 %>%
  filter(REST_USENAME == "Booster Seat", DOANAME == "Died at Scene")%>%
  nrow()
num_use_booster_seat_died_at_scene2018

use_booster_seat_deathrate2018 <- num_use_booster_seat_died_at_scene2018 / num_total_use_booster_seat2018
use_booster_seat_deathrate2018

# the died at scene rate for Restraint Used(Type Unkown) in 2018

num_total_use_unknown_restraint2018 <- Person2018 %>%
  filter(REST_USENAME == "Restraint Used - Type Unknown")%>%
  nrow()
num_total_use_unknown_restraint2018

num_use_unknown_restraint_died_at_scene2018 <- Person2018 %>%
  filter(REST_USENAME == "Restraint Used - Type Unknown", DOANAME == "Died at Scene")%>%
  nrow()
num_use_unknown_restraint_died_at_scene2018

use_unknown_restraint_deathrate2018 <- num_use_unknown_restraint_died_at_scene2018 / num_total_use_unknown_restraint2018
use_unknown_restraint_deathrate2018

# the died at scene rate for not using restraint system in 2019
num_total_norest2019 <- Person2019 %>%
  select("REST_USENAME", "DOANAME") %>%
  filter(REST_USENAME == "None Used/Not Applicable")%>%
  nrow()
num_total_norest2019

num_notuse_died_at_scene2019 <- Person2019 %>%
  filter(REST_USENAME == "None Used/Not Applicable", DOANAME == "Died at Scene")%>%
  nrow()
num_notuse_died_at_scene2019

norest_deathrate2019 <- num_notuse_died_at_scene2019 / num_total_norest2019
norest_deathrate2019

# the died at scene rate for using Shoulder and Lap Belt in 2019.

num_total_use_belt2019 <- Person2019 %>%
  filter(REST_USENAME == "Shoulder and Lap Belt Used")%>%
  nrow()
num_total_use_belt2019

num_use_belt_died_at_scene2019 <- Person2019 %>%
  filter(REST_USENAME == "Shoulder and Lap Belt Used", DOANAME == "Died at Scene")%>%
  nrow()
num_use_belt_died_at_scene2019

use_belt_deathrate2019 <- num_use_belt_died_at_scene2019 / num_total_use_belt2019
use_belt_deathrate2019

# the died at scene rate for using Booster Seat in 2019

num_total_use_booster_seat2019 <- Person2019 %>%
  filter(REST_USENAME == "Booster Seat")%>%
  nrow()
num_total_use_booster_seat2019

num_use_booster_seat_died_at_scene2019 <- Person2019 %>%
  filter(REST_USENAME == "Booster Seat", DOANAME == "Died at Scene")%>%
  nrow()
num_use_booster_seat_died_at_scene2019

use_booster_seat_deathrate2019 <- num_use_booster_seat_died_at_scene2019 / num_total_use_booster_seat2019
use_booster_seat_deathrate2019

# the died at scene rate for Restraint Used(Type Unkown) in 2019

num_total_use_unknown_restraint2019 <- Person2019 %>%
  filter(REST_USENAME == "Restraint Used - Type Unknown")%>%
  nrow()
num_total_use_unknown_restraint2019

num_use_unknown_restraint_died_at_scene2019 <- Person2019 %>%
  filter(REST_USENAME == "Restraint Used - Type Unknown", DOANAME == "Died at Scene")%>%
  nrow()
num_use_unknown_restraint_died_at_scene2019

use_unknown_restraint_deathrate2019 <- num_use_unknown_restraint_died_at_scene2019 / num_total_use_unknown_restraint2019
use_unknown_restraint_deathrate2019

# the average died at scene rate for not using restraint system
ave_death_rate_norest <- (norest_deathrate2017 + norest_deathrate2018 + norest_deathrate2019) / 3
ave_death_rate_norest
is.vector(ave_death_rate_norest)

ave_death_rate_using_belt <- (use_belt_deathrate2017 + use_belt_deathrate2018 + use_belt_deathrate2019) /3
ave_death_rate_using_belt

ave_death_rate_using_booster_seat <- (use_booster_seat_deathrate2017 + use_booster_seat_deathrate2018 + use_booster_seat_deathrate2019) /3
ave_death_rate_using_booster_seat

ave_death_rate_using_unknown_restraint <- (use_unknown_restraint_deathrate2017 + use_unknown_restraint_deathrate2018 + use_unknown_restraint_deathrate2019) / 3
ave_death_rate_using_unknown_restraint

# create data frame
type <- c("No Restraint", "Using Shoulder and Lap Belt", "Using Booster Seat", "Using Restraint(Unknown way)")
rate <- c(ave_death_rate_norest, ave_death_rate_using_belt, ave_death_rate_using_booster_seat, ave_death_rate_using_unknown_restraint )
fatality <- data.frame(type, rate)
print(fatality)
View(fatality)

# drawing a pie chart
ggplot(df, aes(x = "", y = rate, fill = type)) +
  geom_col(color = "black") +
  coord_polar(theta = "y") +
  geom_text(aes(label = rate),
            position = position_stack(vjust = 0.5))+
  scale_fill_discrete(labels = c("No Restraint", "Using Shoulder and Lap Belt", "Using Booster Seat", "Using Restraint(Unknown way)"))
