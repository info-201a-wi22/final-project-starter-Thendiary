source("drug_data.R")
source("CarModel_Accidents.R")
source("fatality_relating_restraint.R")
source("Route_classification.R")

summary <- list(
  propotion,
  highest_death_place, 
  top_five_df$MAKENAME,
  total_incident,
  (fatality$Rate2017/fatality$Rate2018/ fatality$Rate2019)
)
