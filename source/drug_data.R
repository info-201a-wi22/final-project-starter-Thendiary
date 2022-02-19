library("dplyr")
library("tidyverse")
library("ggplot2")
library("stringr")
library(treemapify)

# Read csv files.
Drugs_2018 <- read.csv(
  "../data/Carccident/Fatal_vehicle_crashes/FARS2018NationalCSV/Drugs.CSV")
Drugs_2019 <- read.csv(
  "../data/Carccident/Fatal_vehicle_crashes/FARS2019NationalCSV/Drugs.CSV")

# Filter out important information.
Drugs_tested_2018 <- Drugs_2018 %>%
  select(STATENAME, DRUGSPECNAME, DRUGRESNAME) %>%
  filter(DRUGRESNAME != "Test Not Given")
Drugs_tested_2019 <- Drugs_2019 %>%
  select(STATENAME, DRUGSPECNAME, DRUGRESNAME) %>%
  filter(DRUGRESNAME != "Test Not Given")

# Found how many positive cases.
positive_test_2018 <- Drugs_tested_2018 %>%
  filter(DRUGRESNAME != "Tested, No Drugs Found/Negative")
positive_test_2019 <- Drugs_tested_2019 %>%
  filter(DRUGRESNAME != "Tested, No Drugs Found/Negative")

# Percentage that with negative drug test result.
drug_found_negative_2018 <- 100 - nrow(positive_test_2018) / 
  nrow(Drugs_tested_2018) * 100
drug_found_negative_2019 <- 100 - nrow(positive_test_2019) / 
  nrow(Drugs_tested_2019) * 100

# Get all percentage of different kind of drugs.
positive_test_2018$DRUGRESNAME <- tolower(positive_test_2018$DRUGRESNAME) 
positive_test_2018$DRUGRESNAME <-
  if_else(str_detect(positive_test_2018$DRUGRESNAME,"unknown"), "other drug", positive_test_2018$DRUGRESNAME)
drug_percentage_2018 <- positive_test_2018 %>%
  mutate(count = 1) %>%
  group_by(DRUGRESNAME) %>%
  summarise(num = sum(count)) %>%
  filter(DRUGRESNAME != "not reported") %>%
  mutate(percentage = num / sum(num) * 100)

positive_test_2019$DRUGRESNAME <- tolower(positive_test_2019$DRUGRESNAME) 
positive_test_2019$DRUGRESNAME <-
  if_else(str_detect(positive_test_2019$DRUGRESNAME,"unknown"), "other drug", positive_test_2019$DRUGRESNAME)
drug_percentage_2019 <- positive_test_2019 %>%
  mutate(count = 1) %>%
  group_by(DRUGRESNAME) %>%
  summarise(num = sum(count)) %>%
  filter(DRUGRESNAME != "not reported") %>%
  mutate(percentage = num / sum(num) * 100)

drug_test <- left_join(drug_percentage_2018, drug_percentage_2019, by = "DRUGRESNAME")




       