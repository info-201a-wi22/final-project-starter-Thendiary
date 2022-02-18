library("dplyr")
library("ggplot2")
library("tidyverse")
install.packages("ggrepel")
library(ggrepel)

accident_2019 <- read.csv("../data/Carccident/Fatal_vehicle_crashes/FARS2019NationalCSV/accident.CSV")
accident_2018 <- read.csv("../data/Carccident/Fatal_vehicle_crashes/FARS2018NationalCSV/accident.CSV")
accident_2017 <- read.csv("../data/Carccident/Fatal_vehicle_crashes/FARS2017NationalCSV/accident.CSV")

route_name <- unique(accident_2019$ROUTENAME)
num_route_name <- length(unique(accident_2019$ROUTENAME))

route_death_2019 <- accident_2019 %>%
  group_by(ROUTENAME) %>%
  select(ROUTENAME, FATALS) %>%
  summarize(total_death_2019 = sum(FATALS, na.rm = TRUE))

route_death_2018 <- accident_2018 %>%
  group_by(ROUTENAME) %>%
  select(ROUTENAME, FATALS) %>%
  summarize(total_death_2018 = sum(FATALS, na.rm = TRUE))

route_death_2017 <- accident_2017 %>%
  group_by(ROUTENAME) %>%
  select(ROUTENAME, FATALS) %>%
  summarize(total_death_2017 = sum(FATALS, na.rm = TRUE))

total_route_death_17_19 <- left_join(left_join(route_death_2017, route_death_2018, 
                                               by = "ROUTENAME"), route_death_2019, 
                                     by = "ROUTENAME") %>%
  mutate(total_death  = total_death_2017 + total_death_2018 + total_death_2019) %>%
  arrange(-total_death)

highest_possibility_death_place <- total_route_death_17_19 %>%
  filter(total_death == max(total_death, na.rm = TRUE)) %>%
  pull(ROUTENAME)

p_total <- ggplot(data = total_route_death_17_19) +
  geom_col(mapping = aes(x = fct_reorder(ROUTENAME, desc(total_death)), 
                         y = total_death, fill = ROUTENAME)) +
  theme(legend.position = "none") +
  coord_flip() +
  geom_text(aes(x = fct_reorder(ROUTENAME, desc(total_death)), 
                y = total_death, label = total_death)) +
  labs(
    title = "The Number of Deaths On Each Kind of Road",
    subtitle = "From 2017-2019",
    x = "Route Name",
    y = "Number of Death",
  )
p_total

