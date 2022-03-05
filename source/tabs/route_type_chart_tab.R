library(shiny)
library(plotly)

source("interactive_plot/Route_classification_pie_chart.R")
chart <-tabPanel(
  "Route classification",
  titlePanel("The relationship between the route classification and the number of death."),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "variable",
        label = "Time Range",
        choices = list("2017" = "route_death_2017_rate",
                       "2018 " = "route_death_2018_rate",
                       "2019" = "route_death_2019_rate",
                       "2017 - 2019" = "total_rate")
      ),
    ),
    mainPanel(
      plotlyOutput("graph")
    )
  )
)
