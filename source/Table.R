library("dplyr")
library("tidyverse")

accident_2019 <- read.csv(
  "../data/Carccident/Fatal_vehicle_crashes/FARS2019NationalCSV/accident.CSV")

person2019 <- read.csv(
  "../data/Carccident/Fatal_vehicle_crashes/FARS2019NationalCSV/Person.CSV")

vehicle_2019 <- read.csv(
  "../data/Carccident/Fatal_vehicle_crashes/FARS2019NationalCSV/Vehicle.csv")

drugs_2019 <- read.csv(
  "../data/Carccident/Fatal_vehicle_crashes/FARS2019NationalCSV/Drugs.CSV")

table_2019 <- left_join(accident_2019, Person2019, by = "ST_CASE") %>%
  left_join(vehicle_2019, by = "ST_CASE") %>%
  left_join(Drugs_2019, by = "ST_CASE") %>%
  select(REST_USENAME, DOANAME, ROUTENAME, FATALS, ST_CASE, DRUGRESNAME,
         MAKENAME.x) %>%
  mutate(Year = 2019)
table_2019 <- table_2019[1:10000, ]

table_2019 <- table_2019 %>%
  select(Year, ST_CASE, everything()) %>%
  group_by(ST_CASE) %>%
  filter(MAKENAME.x == unique(MAKENAME.x)) %>%
  filter(ST_CASE == 10002)

colnames(table_2019) <- c("Year", "Case_ID", "Use_of_Restraint", "Death_Type",
                          "Route_Type", "Num_Death", "Drug_Use", "Auto_Maker")
