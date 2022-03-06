library("dplyr")
library("tidyverse")
library("ggplot2")
library("stringr")
library("treemapify")
library("knitr")

source("drug_data.R")


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

plot_drug(drug_name)

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

server <- function(input, output) {
  output$drug <- renderPlot({
    return(plot_drug(input$drugs))
  })
}

shinyApp(ui = ui, server = server)
