library("dplyr")
#library("readr")
library("ggplot2")
#library("tidyr")

Person2017<- read_csv("../data/Carccident/Fatal_vehicle_crashes/FARS2017NationalCSV/Person.CSV")
Person2018 <- read_csv("../data/Carccident/Fatal_vehicle_crashes/FARS2018NationalCSV/Person.CSV")
Person2019 <- read_csv("../data/Carccident/Fatal_vehicle_crashes/FARS2019NationalCSV/Person.CSV")

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


# the died at scene rate for using Shoulder and Lap Belt in 2017 .

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

# the died at scene rate for using Shoulder and Lap Belt in 2019

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

# create data frame
Type <- c("No Restraint", "Using Shoulder and Lap Belt", "Using Booster Seat")
Rate2017 <- c(round(norest_deathrate2017, digits = 4), round(use_belt_deathrate2017, digits = 4),round(use_booster_seat_deathrate2017, digits = 4))
Rate2018 <- c(round(norest_deathrate2018, digits = 4), round(use_belt_deathrate2018, digits = 4),round(use_booster_seat_deathrate2018, digits = 4))
Rate2019 <- c(round(norest_deathrate2019, digits = 4), round(use_belt_deathrate2019, digits = 4),round(use_booster_seat_deathrate2019, digits = 4))
fatality <- data_frame(Type, Rate2017,Rate2018, Rate2019)

# draw the plot
ggplot(fatality, aes(x=Type, y=Rate2017))+
  geom_bar(stat='identity')+
  ylab("2017 - Spot Death Rate")+
  xlab("Using Restraint")


ggplot(fatality, aes(x=Type, y=Rate2018))+
  geom_bar(stat='identity')+
  ylab("2018 - Spot Death Rate")+
  xlab("Using Restraint")

ggplot(fatality, aes(x=Type, y=Rate2019))+
  geom_bar(stat='identity')+
  ylab("2019 - Spot Death Rate")+
  xlab("Using Restraint")

fatalitylong <- gather(fatality, key="measure", value="value", c("Rate2017", "Rate2018", "Rate2019"))

plot_mortality <- ggplot(fatalitylong, aes(x = Type , y=value, fill = Type))+
  geom_bar(stat='identity')+
  facet_wrap(~measure)+
  labs(
    title = "The Spot Deaths Rate Relatin Using Restraint",
    subtitle = "From 2017-2019",
    x = "Restraints",
    y = "Spot Death Rate",
  )+
  geom_text(aes(label=value), vjust=1.6, color="white", size=3.5)+
  theme(axis.text.x = element_text(angle = -45, hjust = 0)) 
  
plot_mortality
