library("dplyr")
library("tidyverse")
library("ggplot2")
library("stringr")
library("treemapify")
library("knitr")

<<<<<<< HEAD
source("interactive_plot/drug_chart.R")
=======
source("drug_data.R")
>>>>>>> 7a203a75de7a3ceb6e5f7052e060f4efc5611cae

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
<<<<<<< HEAD
)
=======
)

ui <- navbarPage(drug_tab)

shinyApp(ui = ui, server = server)
>>>>>>> 7a203a75de7a3ceb6e5f7052e060f4efc5611cae
