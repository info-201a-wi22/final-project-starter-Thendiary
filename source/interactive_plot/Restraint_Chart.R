library("dplyr")
library("ggplot2")
library("plotly")
library("dplyr")

source("source/fatality_relating_restraint.R")

# Average died at scene rate without using restraint
avg_nor_drate <- sum(num_notuse_died_at_scene2017, num_notuse_died_at_scene2018,
                    num_notuse_died_at_scene2019) / sum(num_total_norest2017,
                    num_total_norest2018, num_total_norest2019)
avg_nor_drate

avg_ubelt_drate <- sum(num_use_belt_died_at_scene2017,
                      num_use_belt_died_at_scene2018,
                      num_use_belt_died_at_scene2019) /
  sum(num_total_use_belt2017, num_total_use_belt2018, num_total_use_belt2019)
avg_ubelt_drate

avg_ubseat_drate <- sum(num_ubseat_died_at_scene2017,
                       num_ubseat_died_at_scene2018,
                       num_ubseat_died_at_scene2019) /
  sum(num_total_ubseat2017, num_total_ubseat2018,
      num_total_ubseat2019)
avg_ubseat_drate

# create data frame
type <- c("No Restraint", "Using Shoulder and Lap Belt", "Using Booster Seat")
drate2017 <- c(round(norest_deathrate2017, digits = 4),
               round(use_belt_deathrate2017, digits = 4),
               round(ubs_death_rate2017, digits = 4))
drate2018 <- c(round(norest_deathrate2018, digits = 4),
               round(use_belt_deathrate2018, digits = 4),
               round(ubseat_deathrate2018, digits = 4))
drate2019 <- c(round(norest_deathrate2019, digits = 4),
               round(use_belt_deathrate2019, digits = 4),
               round(ubseat_deathrate2019, digits = 4))
davgrate <- c(round(avg_nor_drate, digits = 4),
              round(avg_ubelt_drate, digits = 4),
              round(avg_ubseat_drate, digits = 4))
fatality <- data_frame(type, drate2017, drate2018, drate2019, davgrate)


# build graph
build_graph <- function(data, yr) {
  varaible <- as.character(yr)
  y_axis <- "Rate"
  if (yr == "drate2017") {
    y_axis <- "Spot Death Rate in 2017"
  } else if (yr == "drate2018") {
    y_axis <- "Spot Death Rate in 2018"
  } else if (yr == "drate2019") {
    y_axis <- "Spot Death Rate in 2019"
  } else if (yr == "davgrate") {
    y_axis <- "Average Spot Death Rate(2017-2019)"
  }

  chart_ggplot <- fatality %>%
    ggplot(aes(x = type, y = .data[[yr]], fill = type)) +
    geom_col() +
    geom_text(aes(label = paste0(.data[[yr]] * 100, "%")), vjust = -1.5,
              size = 3.5) +
    theme(axis.text.x = element_text(angle = -45, hjust = 0)) +
    labs(x = "Restraint Type",
         y = y_axis,
         title = paste0(y_axis, " relating using Restraints in Car"))

  chart_ggplot <- ggplotly(chart_ggplot)

  return(chart_ggplot)
}