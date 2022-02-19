library("dplyr")
library("tidyverse")

accident_2019 <- read.csv("../data/Carccident/Fatal_vehicle_crashes/FARS2019NationalCSV/accident.CSV")
accident_2018 <- read.csv("../data/Carccident/Fatal_vehicle_crashes/FARS2018NationalCSV/accident.CSV")
accident_2017 <- read.csv("../data/Carccident/Fatal_vehicle_crashes/FARS2017NationalCSV/accident.CSV")

Person2017<- read.csv("../data/Carccident/Fatal_vehicle_crashes/FARS2017NationalCSV/Person.CSV")
Person2018 <- read.csv("../data/Carccident/Fatal_vehicle_crashes/FARS2018NationalCSV/Person.CSV")
Person2019 <- read.csv("../data/Carccident/Fatal_vehicle_crashes/FARS2019NationalCSV/Person.CSV")

vehicle_2017 <- read.csv("../data/Carccident/Fatal_vehicle_crashes/FARS2017NationalCSV/Vehicle.csv")
vehicle_2018 <- read.csv("../data/Carccident/Fatal_vehicle_crashes/FARS2018NationalCSV/Vehicle.csv")
vehicle_2019 <- read.csv("../data/Carccident/Fatal_vehicle_crashes/FARS2019NationalCSV/Vehicle.csv")

Drugs_2018 <- read.csv("../data/Carccident/Fatal_vehicle_crashes/FARS2018NationalCSV/Drugs.CSV")
Drugs_2019 <- read.csv("../data/Carccident/Fatal_vehicle_crashes/FARS2019NationalCSV/Drugs.CSV")

table_2017 <- left_join(accident_2017, Person2017, by = "ST_CASE") %>%
  left_join(vehicle_2017, by = "ST_CASE") %>%
  select(REST_USENAME, DOANAME, ROUTENAME, FATALS, ST_CASE, MAKENAME.x)

table_2018 <- left_join(accident_2018, Person2018, by = "ST_CASE") %>%
  left_join(vehicle_2018, by = "ST_CASE") %>%
  left_join(Drugs_2018, by = "ST_CASE") %>%
  select(REST_USENAME, DOANAME, ROUTENAME, FATALS, ST_CASE, DRUGRESNAME, MAKENAME.x)

table_2019 <- left_join(accident_2019, Person2019, by = "ST_CASE") %>%
  left_join(vehicle_2019, by = "ST_CASE") %>%
  left_join(Drugs_2019, by = "ST_CASE") %>%
  select(REST_USENAME, DOANAME, ROUTENAME, FATALS, ST_CASE, DRUGRESNAME, MAKENAME.x)
