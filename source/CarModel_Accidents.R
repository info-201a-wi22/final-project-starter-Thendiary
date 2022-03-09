library("dplyr")
library("tidyverse")
library("ggplot2")

vehicle_2017 <- read.csv("data/Carccident/Fatal_vehicle_crashes/FARS2017NationalCSV/Vehicle.CSV")
num_incidents_2017 <- nrow(vehicle_2017)

vehicle_2018 <- read.csv("data/Carccident/Fatal_vehicle_crashes/FARS2018NationalCSV/Vehicle.CSV")
num_incidents_2018 <- nrow(vehicle_2018)

vehicle_2019 <- read.csv("data/Carccident/Fatal_vehicle_crashes/FARS2019NationalCSV/Vehicle.CSV")
num_incidents_2019 <- nrow(vehicle_2019)

summary_make <- function(df, num_inci) {
  make_summary <- df %>%
    group_by(MAKENAME) %>%
    summarise(Make_incidents = n()) %>%
    mutate(Proportion = Make_incidents / num_inci)
  return(make_summary)
}

make_summary_2017 <- summary_make(vehicle_2017, num_incidents_2017)
make_summary_2018 <- summary_make(vehicle_2018, num_incidents_2018)
make_summary_2019 <- summary_make(vehicle_2019, num_incidents_2019)

make_2017_2018 <- merge(make_summary_2017, make_summary_2018, all = TRUE)
make_2017_2019 <- merge(make_2017_2018, make_summary_2019, all = TRUE)
make_2017_2019 <- make_2017_2019 %>%
  group_by(MAKENAME) %>%
  summarise(three_year_avg = sum(Proportion) / 3)

make_2017_2019 <- arrange(make_2017_2019, -three_year_avg)
top_five_df <- make_2017_2019[1:5, ]


top_five <- ggplot(top_five_df) +
  geom_col(mapping = aes(x = reorder(MAKENAME, +three_year_avg),
                         y = three_year_avg, fill = MAKENAME),
           show.legend = FALSE) +
  labs(x = "Auto Makers", y = "Avg fatal crashes involved in %",
       title = "Fatal crashes: top five automakers (2017 - 2019)") +
  scale_y_continuous(labels = scales::percent) +
  coord_flip()

total_incident <- num_incidents_2017 + num_incidents_2018 + num_incidents_2019
