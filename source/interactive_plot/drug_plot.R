library("dplyr")
library("tidyverse")
library("ggplot2")
library("stringr")
library("treemapify")
library("knitr")

source("source/drug_data.R")

plot_drug <- function(drugs){
  drug_test <- filter(drug_test, DRUGRESNAME %in% drugs)
  plot <- ggplot(drug_test, aes(area = num, fill = DRUGRESNAME, label = percentage)) +
    geom_treemap() +
    geom_treemap_text(size = 15, 
                      color = "white", 
                      place = "centre") +
    ggtitle("Drug specification for 2018-2019")
  plot
}
