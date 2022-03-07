library("dplyr")
library("ggplot2")
library("plotly")
library("dplyr")

source("fatality_relating_restraint.R")

# Average died at scene rate without using restraint
Avg_NoR_Drate<- sum(num_notuse_died_at_scene2017, num_notuse_died_at_scene2018, num_notuse_died_at_scene2019) / 
  sum(num_total_norest2017, num_total_norest2018, num_total_norest2019) 
Avg_NoR_Drate

Avg_UBelt_Drate<- sum(num_use_belt_died_at_scene2017, num_use_belt_died_at_scene2018, num_use_belt_died_at_scene2019) / 
  sum(num_total_use_belt2017, num_total_use_belt2018, num_total_use_belt2019) 
Avg_UBelt_Drate

Avg_UBSeat_Drate<- sum(num_use_booster_seat_died_at_scene2017, num_use_booster_seat_died_at_scene2018, num_use_booster_seat_died_at_scene2019) / 
  sum(num_total_use_booster_seat2017, num_total_use_booster_seat2018, num_total_use_booster_seat2019) 
Avg_UBSeat_Drate

# create data frame
Type <- c( "No Restraint", "Using Shoulder and Lap Belt", "Using Booster Seat")
DRate2017 <- c(round(norest_deathrate2017, digits = 4), round(use_belt_deathrate2017, digits = 4),round(use_booster_seat_deathrate2017, digits = 4))
DRate2018 <- c(round(norest_deathrate2018, digits = 4), round(use_belt_deathrate2018, digits = 4),round(use_booster_seat_deathrate2018, digits = 4))
DRate2019 <- c(round(norest_deathrate2019, digits = 4), round(use_belt_deathrate2019, digits = 4),round(use_booster_seat_deathrate2019, digits = 4))
DAvgRate <- c(round(Avg_NoR_Drate, digits = 4), round(Avg_UBelt_Drate, digits = 4), round(Avg_UBSeat_Drate, digits = 4))
fatality <- data_frame(Type, DRate2017,DRate2018, DRate2019, DAvgRate)


# build graph
build_graph <- function(data, YR) {
  varaible <- as.character(YR)
  y_axis <- "Rate"
  if(YR == "DRate2017") {
    y_axis <- "Spot Death Rate in 2017"
  } else if (YR == "DRate2018") {
    y_axis <- "Spot Death Rate in 2018"
  } else if (YR == "DRate2019"){
    y_axis <- "Spot Death Rate in 2019"
  } else if (YR == "DAvgRate") {
    y_axis <- "Average Spot Death Rate(2017-2019)"
  }
  
  chart_ggplot <- fatality %>%
    ggplot(aes(x = Type, y =.data[[YR]], fill = Type)) +
    geom_col() +
    geom_text(aes(label=paste0(.data[[YR]] * 100, "%")), vjust=-1.5, size=3.5)+
    theme(axis.text.x = element_text(angle = -45, hjust = 0)) +
    labs(x = "Restraint Type",
         y = y_axis,
         title = paste0(y_axis, " relating using Restraints in Car"))
  
  chart_ggplot <- ggplotly(chart_ggplot)
  
  return(chart_ggplot)
}

build_graph(fatality, "DAvgRate")

