library("dplyr")
library("readr")
library("ggplot2")
library("tidyr")
library("plotly")

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

norest_deathrate2017 <- num_notuse_died_at_scene2017 / num_total_norest2017 *100
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

use_belt_deathrate2017 <- num_use_belt_died_at_scene2017 / num_total_use_belt2017 * 100
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

use_booster_seat_deathrate2017 <- num_use_booster_seat_died_at_scene2017 / num_total_use_booster_seat2017 * 100
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

norest_deathrate2018 <- num_notuse_died_at_scene2018 / num_total_norest2018 * 100
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

use_belt_deathrate2018 <- num_use_belt_died_at_scene2018 / num_total_use_belt2018 * 100
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

use_booster_seat_deathrate2018 <- num_use_booster_seat_died_at_scene2018 / num_total_use_booster_seat2018 * 100
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

norest_deathrate2019 <- num_notuse_died_at_scene2019 / num_total_norest2019 * 100
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

use_belt_deathrate2019 <- num_use_belt_died_at_scene2019 / num_total_use_belt2019 * 100
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

use_booster_seat_deathrate2019 <- num_use_booster_seat_died_at_scene2019 / num_total_use_booster_seat2019 * 100
use_booster_seat_deathrate2019

# Average died at scene rate without using restraint
Avg_NoR_Drate<- sum(num_notuse_died_at_scene2017, num_notuse_died_at_scene2018, num_notuse_died_at_scene2019) / 
  sum(num_total_norest2017, num_total_norest2018, num_total_norest2019) *100
Avg_NoR_Drate

Avg_UBelt_Drate<- sum(num_use_belt_died_at_scene2017, num_use_belt_died_at_scene2018, num_use_belt_died_at_scene2019) / 
  sum(num_total_use_belt2017, num_total_use_belt2018, num_total_use_belt2019) *100
Avg_UBelt_Drate

Avg_UBSeat_Drate<- sum(num_use_booster_seat_died_at_scene2017, num_use_booster_seat_died_at_scene2018, num_use_booster_seat_died_at_scene2019) / 
  sum(num_total_use_booster_seat2017, num_total_use_booster_seat2018, num_total_use_booster_seat2019) *100
Avg_UBSeat_Drate

# create data frame
Type <- c( "No Restraint", "Using Shoulder and Lap Belt", "Using Booster Seat")
DRate2017 <- c(round(norest_deathrate2017, digits = 2), round(use_belt_deathrate2017, digits = 2),round(use_booster_seat_deathrate2017, digits = 2))
DRate2018 <- c(round(norest_deathrate2018, digits = 2), round(use_belt_deathrate2018, digits = 2),round(use_booster_seat_deathrate2018, digits = 2))
DRate2019 <- c(round(norest_deathrate2019, digits = 2), round(use_belt_deathrate2019, digits = 2),round(use_booster_seat_deathrate2019, digits =2))
DAvgRate <- c(round(Avg_NoR_Drate, digits = 2), round(Avg_UBelt_Drate, digits = 2), round(Avg_UBSeat_Drate, digits = 2))
fatality <- data_frame(Type, DRate2017,DRate2018, DRate2019, DAvgRate)


# build graph
build_graph <- function(data, variable) {
  y_axis <- "Rate"
  if(variable == "DRate2017") {
    y_axis <- "Spot Death Rate in 2017"
  } else if (variable == "DRate2018") {
    y_axis <- "Spot Death Rate in 2018"
  } else if (variable == "DRate2019"){
    y_axis <- "Spot Death Rate in 2019"
  } else if (variable == "DAvgRate") {
    y_axis <- "Average Spot Death Rate from 2017 to 2019"
  }
  
  chart_ggplot <- fatality %>%
    ggplot(aes(x =  Type, y = fatality[[variable]], fill = Type)) +
    geom_col() +
    labs(x = "Restraint Type",
         y = y_axis,
         title = paste0(y_axis, "relating using Restraints in Car"))
  
  chart_ggplot <- ggplotly(chart_ggplot)
  
  return(chart_ggplot)
}
