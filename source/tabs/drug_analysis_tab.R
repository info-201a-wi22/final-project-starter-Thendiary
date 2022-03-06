library("dplyr")
library("tidyverse")
library("ggplot2")
library("stringr")
library("treemapify")
library("knitr")

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
        selected = "Other drugs"
      )
    ),
    mainPanel(
      plotOutput("drug")
    )
  )
)

ui <- navbarPage(drug_tab)

shinyApp(ui = ui, server = server)
