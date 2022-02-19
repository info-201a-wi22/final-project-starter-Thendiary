source("../source/drug_data.R")
source("../source/CarModel_Accidents.R")
source("../source/fatality_relating_restraint.R")
source("../source/Route_classification.R")

fat_2017 <- fatality$Rate2017
fat_2018 <- fatality$Rate2018
fat_2019 <- fatality$Rate2019
summary <- list(
  propotion,
  highest_death_place, 
  top_five_df$MAKENAME,
  total_incident,
  fatality$Type,
  fat_2017,
  fat_2018,
  fat_2019
  )

