library("dplyr")
library("ggplot2")


# Download the dataset I need
accident_2019 <- read.csv("../data/Carccident/Fatal_vehicle_crashes/FARS2019NationalCSV/accident.CSV")
accident_2018 <- read.csv("../data/Carccident/Fatal_vehicle_crashes/FARS2018NationalCSV/accident.CSV")
accident_2017 <- read.csv("../data/Carccident/Fatal_vehicle_crashes/FARS2017NationalCSV/accident.CSV")

# Find the death number in different road in 2019.
route_death_2019 <- accident_2019 %>%
  group_by(ROUTENAME) %>%
  select(ROUTENAME, FATALS) %>%
  summarize(total_death_2019 = sum(FATALS, na.rm = TRUE))
sum_route_death_2019 <- sum(route_death_2019$total_death_2019)
route_death_2019 <- route_death_2019 %>%
  mutate(route_death_2019_rate = round(total_death_2019 / sum_route_death_2019, digits = 2))

# Find the death number in different road in 2018.
route_death_2018 <- accident_2018 %>%
  group_by(ROUTENAME) %>%
  select(ROUTENAME, FATALS) %>%
  summarize(total_death_2018 = sum(FATALS, na.rm = TRUE))
sum_route_death_2018 <- sum(route_death_2018$total_death_2018)
route_death_2018 <- route_death_2018 %>%
  mutate(route_death_2018_rate = round(total_death_2018 / sum_route_death_2018, digits = 2))

# Find the death number in different road in 2017.
route_death_2017 <- accident_2017 %>%
  group_by(ROUTENAME) %>%
  select(ROUTENAME, FATALS) %>%
  summarize(total_death_2017 = sum(FATALS, na.rm = TRUE))
sum_route_death_2017 <- sum(route_death_2017$total_death_2017)
route_death_2017 <- route_death_2017 %>%
  mutate(route_death_2017_rate = round(total_death_2017 / sum_route_death_2017, digits = 2))

# Join three data frames just found, and calculate the total death from 2017 to 2019
total_route_death_17_19 <- left_join(left_join(route_death_2017, route_death_2018, 
                                               by = "ROUTENAME"), route_death_2019, 
                                     by = "ROUTENAME") %>%
  mutate(total_death_road  = total_death_2017 + total_death_2018 + total_death_2019) 

sum_death_num <- sum(total_route_death_17_19$total_death_road, na.rm = TRUE)

data_1 <- total_route_death_17_19 %>%
  mutate(total_rate = round(total_death_road / sum_death_num, digits = 2))


build_graph <- function(data, variable) {
  graph <- plot_ly(data_1, labels = ~ROUTENAME, values = ~data_1[[variable]], type = 'pie')
  graph <- graph %>% layout(title = 'The Proportion of Deaths On Each Kind of Road',
                        xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                        yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
  return(graph)
}
