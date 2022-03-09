library("shiny")
library("ggplot2")
library("plotly")
library("knitr")
library("dplyr")

source("source/Route_classification.R")

sum_route_death_2019 <- sum(route_death_2019$total_death_2019)
route_death_2019 <- route_death_2019 %>%
  mutate(route_death_2019_rate = round(total_death_2019 /
                                         sum_route_death_2019, digits = 2))

sum_route_death_2018 <- sum(route_death_2018$total_death_2018)
route_death_2018 <- route_death_2018 %>%
  mutate(route_death_2018_rate = round(total_death_2018 /
                                         sum_route_death_2018, digits = 2))

sum_route_death_2017 <- sum(route_death_2017$total_death_2017)
route_death_2017 <- route_death_2017 %>%
  mutate(route_death_2017_rate = round(total_death_2017 / sum_route_death_2017,
                                       digits = 2))

# Join three data frames just found, and calculate the total
#death from 2017 to 2019
route_death_17_19 <- left_join(left_join(route_death_2017, route_death_2018,
                                         by = "ROUTENAME"), route_death_2019,
                               by = "ROUTENAME") %>%
  mutate(total_death_road  = total_death_2017 + total_death_2018 +
           total_death_2019)

sum_death_num <- sum(route_death_17_19$total_death_road, na.rm = TRUE)

data <- route_death_17_19 %>%
  mutate(total_rate = round(total_death_road / sum_death_num, digits = 2))


graph <- function(data, variable) {
  plotly_graph <- plot_ly(data = data, labels = ~ROUTENAME,
                          values = ~data[[variable]], type = "pie") %>%
    layout(title = "The Proportion of Deaths On Each Kind of Road",
           xaxis = list(showgrid = FALSE, zeroline = FALSE,
                        showticklabels = FALSE),
           yaxis = list(showgrid = FALSE, zeroline = FALSE,
                        showticklabels = FALSE))

  return(plotly_graph)
}