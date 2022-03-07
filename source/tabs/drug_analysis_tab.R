library("dplyr")
library("tidyverse")
library("ggplot2")
library("stringr")
library("treemapify")
library("knitr")

source("interactive_plot/drug_chart.R")

source("drug_data.R")

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
        selected = "Other drug"
      )
    ),
    mainPanel(
      plotOutput("drug")
    )
  )
)
<<<<<<< HEAD

=======
>>>>>>> bf57244c4a8ae5b479c3495b55f18e60de225535
