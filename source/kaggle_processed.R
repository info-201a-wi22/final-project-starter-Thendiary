library("dplyr")
library("tidyverse")
library("stringr")

# The orginal data exceeds the file size limit of github
# So i open the file locally rather than uploaded to github
# Link to dataset: https://www.kaggle.com/sobhanmoosavi/us-accidents/download
kaggle_data <- read.csv("US_Accidents_Dec20_updated.csv")

kaggle_data <- kaggle_data %>% 
  mutate(Time_Rank = gsub("\\s+.*", "", Start_Time))

kaggle_2017 <- kaggle_data %>% 
  filter(Time_Rank >= "2017" & Time_Rank < "2018") %>% 
  arrange(Time_Rank)
write.csv(kaggle_2017, "US_Accidents_2017.csv")
  
kaggle_2018 <- kaggle_data %>% 
  filter(Time_Rank >= "2018" & Time_Rank < "2019") %>%
  arrange(Time_Rank)
write.csv(kaggle_2018, "US_Accidents_2018.csv")

kaggle_2019 <- kaggle_data %>% 
  filter(Time_Rank >= "2019" & Time_Rank < "2020") %>%
  arrange(Time_Rank)
write.csv(kaggle_2019, "US_Accidents_2019.csv")

nrow(kaggle_2019)
kaggle_2019_1 <- kaggle_2019[1:130886,]
write.csv(kaggle_2019_1, "US_Accidents_2019_1.csv")
kaggle_2019_2 <- kaggle_2019[130887:261772,]
write.csv(kaggle_2019_2, "US_Accidents_2019_2.csv")
