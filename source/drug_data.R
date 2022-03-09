library("dplyr")
library("tidyverse")
library("ggplot2")
library("stringr")
library("treemapify")

# Read csv files.
drugs_2018 <- read.csv(
  "data/Carccident/Fatal_vehicle_crashes/FARS2018NationalCSV/Drugs.CSV")
drugs_2019 <- read.csv(
  "data/Carccident/Fatal_vehicle_crashes/FARS2019NationalCSV/Drugs.CSV")

# Filter out important information.
drugs_tested_2018 <- drugs_2018 %>%
  select(STATENAME, DRUGSPECNAME, DRUGRESNAME) %>%
  filter(DRUGRESNAME != "Test Not Given")
drugs_tested_2019 <- drugs_2019 %>%
  select(STATENAME, DRUGSPECNAME, DRUGRESNAME) %>%
  filter(DRUGRESNAME != "Test Not Given")

tested_2018 <- paste(
  round(nrow(drugs_tested_2018) / nrow(drugs_2018) * 100, 2), "%", sep = ""
  )
tested_2019 <- paste(
  round(nrow(drugs_tested_2019) / nrow(drugs_2019) * 100, 2), "%", sep = ""
)

# Found how many positive cases.
positive_test_2018 <- drugs_tested_2018 %>%
  filter(DRUGRESNAME != "Tested, No Drugs Found/Negative")
positive_test_2019 <- drugs_tested_2019 %>%
  filter(DRUGRESNAME != "Tested, No Drugs Found/Negative")

# Percentage that with negative drug test result.
drug_found_negative_2018 <- 100 - nrow(positive_test_2018) /
  nrow(drugs_tested_2018) * 100
drug_found_negative_2019 <- 100 - nrow(positive_test_2019) /
  nrow(drugs_tested_2019) * 100

# Get all percentage of different kind of drugs.
positive_test_2018$DRUGRESNAME <- tolower(positive_test_2018$DRUGRESNAME)
positive_test_2018$DRUGRESNAME <-
  if_else(str_detect(positive_test_2018$DRUGRESNAME, "unknown"), "other drug",
          positive_test_2018$DRUGRESNAME)
drug_percentage_2018 <- positive_test_2018 %>%
  mutate(count = 1) %>%
  group_by(DRUGRESNAME) %>%
  summarise(num = sum(count)) %>%
  filter(DRUGRESNAME != "not reported")

positive_test_2019$DRUGRESNAME <- tolower(positive_test_2019$DRUGRESNAME)
positive_test_2019$DRUGRESNAME <-
  if_else(str_detect(positive_test_2019$DRUGRESNAME, "unknown"), "other drug",
          positive_test_2019$DRUGRESNAME)
drug_percentage_2019 <- positive_test_2019 %>%
  mutate(count = 1) %>%
  group_by(DRUGRESNAME) %>%
  summarise(num = sum(count)) %>%
  filter(DRUGRESNAME != "not reported")

# Summary of dataframe above.
drug_test <- left_join(drug_percentage_2018, drug_percentage_2019,
                       by = "DRUGRESNAME") %>%
  mutate(num = num.x + num.y) %>%
  select(DRUGRESNAME, num) %>%
  mutate(percentage = paste(round(num / sum(num, na.rm = T) * 100, 2), "%",
                            sep = "")) %>%
  arrange(-num)
drug_test <- drug_test[1:10, ]

# Change drug name since some of them is too long.
drug_name <- c("Other drug", "Marijuana", "Desoxyn", "Amphetamine",
               "Delta 9", "Benzoylecgonine", "Cocaine", "Fentanyl",
               "Alprazolam", "Morphine")
drug_test$DRUGRESNAME <- drug_name

propotion <- drug_test %>%
  filter(DRUGRESNAME == "Marijuana") %>%
  pull(percentage)

# Plot
plot_drug <- ggplot(drug_test, aes(area = num, fill = DRUGRESNAME,
                                   label = percentage)) +
  geom_treemap() +
  geom_treemap_text(size = 15,
                    color = "white",
                    place = "centre") +
  ggtitle("Drug specification for 2018-2019")
plot_drug

