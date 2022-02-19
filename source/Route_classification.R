library("dplyr")
library("ggplot2")
library("tidyverse")


# Download the dataset I need
accident_2019 <- read.csv("../data/Carccident/Fatal_vehicle_crashes/FARS2019NationalCSV/accident.CSV")
accident_2018 <- read.csv("../data/Carccident/Fatal_vehicle_crashes/FARS2018NationalCSV/accident.CSV")
accident_2017 <- read.csv("../data/Carccident/Fatal_vehicle_crashes/FARS2017NationalCSV/accident.CSV")

# Find the death number in different road in 2019.
route_death_2019 <- accident_2019 %>%
  group_by(ROUTENAME) %>%
  select(ROUTENAME, FATALS) %>%
  summarize(total_death_2019 = sum(FATALS, na.rm = TRUE))

# Find the death number in different road in 2018.
route_death_2018 <- accident_2018 %>%
  group_by(ROUTENAME) %>%
  select(ROUTENAME, FATALS) %>%
  summarize(total_death_2018 = sum(FATALS, na.rm = TRUE))

# Find the death number in different road in 2017.
route_death_2017 <- accident_2017 %>%
  group_by(ROUTENAME) %>%
  select(ROUTENAME, FATALS) %>%
  summarize(total_death_2017 = sum(FATALS, na.rm = TRUE))

# Join three data frames just found, and calculate the total death from 2017 to 2019
total_route_death_17_19 <- left_join(left_join(route_death_2017, route_death_2018, 
                                               by = "ROUTENAME"), route_death_2019, 
                                     by = "ROUTENAME") %>%
  mutate(total_death_road  = total_death_2017 + total_death_2018 + total_death_2019) 

sum_death_num <- sum(total_route_death_17_19$total_death_road, na.rm = TRUE)

total_route_death_17_19 <- total_route_death_17_19 %>%
  mutate(rate = round(total_death_road / sum_death_num, digits = 2))

# Create a pie chart to show the proportion between the death number and 
# the total death number from 2017 to 2019.
lab <- paste0((total_route_death_17_19$rate * 100), "%")
p_rate <- ggplot(data = total_route_death_17_19, aes(x = "", y = rate, fill = ROUTENAME)) +
  geom_col(color = "white") +
  coord_polar(theta = "y") +
  geom_text(aes(label = lab),
            position = position_stack(vjust = 0.5)) +
  labs(
    title = "The Proportion of Deaths On Each Kind of Road",
    subtitle = "From 2017-2019",
  )
p_rate

# Find the place had the highest death number.
highest_death_place <- total_route_death_17_19 %>%
  filter(total_death == max(total_death, na.rm = TRUE)) %>%
  pull(ROUTENAME)
