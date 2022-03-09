library("dplyr")
library("tidyverse")
library("ggplot2")
library("stringr")
library("treemapify")
library("knitr")
library("shiny")

source("source/interactive_plot/drug_chart.R")

source("source/drug_data.R")

drug_tab <- tabPanel(
  "Addictive Driving",
  titlePanel("Addictive Driving Percentage Involved in Severe Accidents"),
  sidebarLayout(
    column(
      3,
      checkboxGroupInput(
        inputId = "drugs",
        label = "Percentage of Drugs",
        choices = as.list(drug_name),
        selected = drug_name
      )
    ),
    mainPanel(
      plotOutput("drug"),
      p("This chart shows how many percentage that each kind of drugs are found in cases
         with a positive test result. It can be seen clearly that, except the other drugs, 
        the most common one is marijuana, which is now legal in law in a lot of states in 
        U.s..")
    )
  )
)
