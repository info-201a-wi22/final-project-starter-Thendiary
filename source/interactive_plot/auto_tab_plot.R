library("ggplot2")
library("plotly")
library("dplyr")

source("CarModel_Accidents.R")

clean_data <- function(df, year) {
  df <- df %>% 
    mutate(Year = year)
}
options(scipen = 999)
make_summary_2017 <- clean_data(make_summary_2017, 2017)
make_summary_2018 <- clean_data(make_summary_2018, 2018)
make_summary_2019 <- clean_data(make_summary_2019, 2019)

make_all <- merge(make_summary_2017, make_summary_2018, all = TRUE)
make_all <- merge(make_summary_2019, make_all, all = TRUE)
make_all <- make_all %>% 
  group_by(MAKENAME) %>% 
  select(MAKENAME, Make_incidents, Proportion) %>% 
  summarise_all(sum) %>% 
  mutate(three_avg = Proportion / 3) %>% 
  select(MAKENAME, Make_incidents, three_avg)

colnames(make_all) <- c('MAKENAME', 'Make_incidents', 'Proportion')
##make_all <- clean_data(make_2017_2019, "2017-2019")

auto_scatter <- function(df) {
  scatter <- df %>% 
    ggplot(aes(x = Make_incidents, y = Proportion, color = MAKENAME)) +
    geom_point(aes(text = paste("Maker:", MAKENAME,
                                "\nTotal Incidents:", Make_incidents,
                                "\nProportion:", round(Proportion, digits = 7) * 100, "%"))) +
    labs(x = "Number of Incidents",
         y = "Porprotion") +
    theme(legend.position = "none")
  
  scatter <- ggplotly(scatter, tooltip = "text")
  
  print(scatter)
}

#auto_scatter(make_all)
