library("dplyr")
library("tidyverse")
library("ggplot2")

person2017 <- read.csv(
  "data/Carccident/Fatal_vehicle_crashes/FARS2017NationalCSV/Person.CSV")
person2018 <- read.csv(
  "data/Carccident/Fatal_vehicle_crashes/FARS2018NationalCSV/Person.CSV")
person2019 <- read.csv(
  "data/Carccident/Fatal_vehicle_crashes/FARS2019NationalCSV/Person.CSV")

# the died at scene rate for not using restraint system in 2017
num_total_norest2017 <- person2017 %>%
  select("REST_USENAME", "DOANAME") %>%
  filter(REST_USENAME == "None Used / Not Applicable") %>%
  nrow()

num_notuse_died_at_scene2017 <- person2017 %>%
  filter(REST_USENAME == "None Used / Not Applicable",
         DOANAME == "Died at Scene") %>%
  nrow()
num_notuse_died_at_scene2017

norest_deathrate2017 <- num_notuse_died_at_scene2017 / num_total_norest2017
norest_deathrate2017


# the died at scene rate for using Shoulder and Lap Belt in 2017 .

num_total_use_belt2017 <- person2017 %>%
  filter(REST_USENAME == "Shoulder and Lap Belt Used") %>%
  nrow()
num_total_use_belt2017

num_use_belt_died_at_scene2017 <- person2017 %>%
  filter(REST_USENAME == "Shoulder and Lap Belt Used",
         DOANAME == "Died at Scene") %>%
  nrow()
num_use_belt_died_at_scene2017

use_belt_deathrate2017 <- num_use_belt_died_at_scene2017 /
  num_total_use_belt2017
use_belt_deathrate2017

# the died at scene rate for using Booster Seat in 2017

num_total_ubseat2017 <- person2017 %>%
  filter(REST_USENAME == "Booster Seat") %>%
  nrow()
num_total_ubseat2017

num_ubseat_died_at_scene2017 <- person2017 %>%
  filter(REST_USENAME == "Booster Seat", DOANAME == "Died at Scene") %>%
  nrow()
num_ubseat_died_at_scene2017

ubs_death_rate2017 <- num_ubseat_died_at_scene2017 /
  num_total_ubseat2017
ubs_death_rate2017

# the died at scene rate for not using restraint system in 2018
num_total_norest2018 <- person2018 %>%
  filter(REST_USENAME == "None Used / Not Applicable") %>%
  nrow()
num_total_norest2018

num_notuse_died_at_scene2018 <- person2018 %>%
  select("REST_USENAME", "DOANAME") %>%
  filter(REST_USENAME == "None Used / Not Applicable",
         DOANAME == "Died at Scene") %>%
  nrow()
num_notuse_died_at_scene2018

norest_deathrate2018 <- num_notuse_died_at_scene2018 / num_total_norest2018
norest_deathrate2018

# the died at scene rate for using Shoulder and Lap Belt in 2018

num_total_use_belt2018 <- person2018 %>%
  filter(REST_USENAME == "Shoulder and Lap Belt Used") %>%
  nrow()
num_total_use_belt2018

num_use_belt_died_at_scene2018 <- person2018 %>%
  filter(REST_USENAME == "Shoulder and Lap Belt Used",
         DOANAME == "Died at Scene") %>%
  nrow()
num_use_belt_died_at_scene2018

use_belt_deathrate2018 <- num_use_belt_died_at_scene2018 /
  num_total_use_belt2018
use_belt_deathrate2018

# the died at scene rate for using Booster Seat in 2018

num_total_ubseat2018 <- person2018 %>%
  filter(REST_USENAME == "Booster Seat") %>%
  nrow()
num_total_ubseat2018

num_ubseat_died_at_scene2018 <- person2018 %>%
  filter(REST_USENAME == "Booster Seat", DOANAME == "Died at Scene") %>%
  nrow()
num_ubseat_died_at_scene2018

ubseat_deathrate2018 <- num_ubseat_died_at_scene2018 /
  num_total_ubseat2018
ubseat_deathrate2018

# the died at scene rate for not using restraint system in 2019
num_total_norest2019 <- person2019 %>%
  select("REST_USENAME", "DOANAME") %>%
  filter(REST_USENAME == "None Used/Not Applicable") %>%
  nrow()
num_total_norest2019

num_notuse_died_at_scene2019 <- person2019 %>%
  filter(REST_USENAME == "None Used/Not Applicable",
         DOANAME == "Died at Scene") %>%
  nrow()
num_notuse_died_at_scene2019

norest_deathrate2019 <- num_notuse_died_at_scene2019 / num_total_norest2019
norest_deathrate2019

# the died at scene rate for using Shoulder and Lap Belt in 2019

num_total_use_belt2019 <- person2019 %>%
  filter(REST_USENAME == "Shoulder and Lap Belt Used") %>%
  nrow()
num_total_use_belt2019

num_use_belt_died_at_scene2019 <- person2019 %>%
  filter(REST_USENAME == "Shoulder and Lap Belt Used",
         DOANAME == "Died at Scene") %>%
  nrow()
num_use_belt_died_at_scene2019

use_belt_deathrate2019 <- num_use_belt_died_at_scene2019 /
  num_total_use_belt2019
use_belt_deathrate2019

# the died at scene rate for using Booster Seat in 2019

num_total_ubseat2019 <- person2019 %>%
  filter(REST_USENAME == "Booster Seat") %>%
  nrow()
num_total_ubseat2019

num_ubseat_died_at_scene2019 <- person2019 %>%
  filter(REST_USENAME == "Booster Seat", DOANAME == "Died at Scene") %>%
  nrow()
num_ubseat_died_at_scene2019

ubseat_deathrate2019 <- num_ubseat_died_at_scene2019 /
  num_total_ubseat2019
ubseat_deathrate2019

# create data frame
type <- c("No Restraint", "Using Shoulder and Lap Belt", "Using Booster Seat")
rate2017 <- c(round(norest_deathrate2017, digits = 4),
              round(use_belt_deathrate2017, digits = 4),
              round(ubs_death_rate2017, digits = 4))
rate2018 <- c(round(norest_deathrate2018, digits = 4),
              round(use_belt_deathrate2018, digits = 4),
              round(ubseat_deathrate2018, digits = 4))
rate2019 <- c(round(norest_deathrate2019, digits = 4),
              round(use_belt_deathrate2019, digits = 4),
              round(ubseat_deathrate2019, digits = 4))
fatality <- data.frame(type, rate2017, rate2018, rate2019)

# draw the plot
ggplot(fatality, aes(x = type, y = rate2017)) +
  geom_bar(stat = "identity") +
  ylab("2017 - Spot Death Rate") +
  xlab("Using Restraint")


ggplot(fatality, aes(x = type, y = rate2018)) +
  geom_bar(stat = "identity") +
  ylab("2018 - Spot Death Rate") +
  xlab("Using Restraint")

ggplot(fatality, aes(x = type, y = rate2019)) +
  geom_bar(stat = "identity") +
  ylab("2019 - Spot Death Rate") +
  xlab("Using Restraint")

fatalitylong <- gather(fatality, key = "measure", value = "value",
                       c("rate2017", "rate2018", "rate2019"))

plot_mortality <- ggplot(fatalitylong, aes(x = type, y = value, fill = type)) +
  geom_bar(stat = "identity") +
  facet_wrap(~measure) +
  labs(
    title = "The Spot Deaths Rate Relatin Using Restraint",
    subtitle = "From 2017-2019",
    x = "Restraints",
    y = "Spot Death Rate",
  ) +
  geom_text(aes(label = value), vjust = 1.6, color = "white", size = 3.5) +
  theme(axis.text.x = element_text(angle = -45, hjust = 0))

plot_mortality