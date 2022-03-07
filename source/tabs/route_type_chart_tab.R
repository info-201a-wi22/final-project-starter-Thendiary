library("shiny")
library("ggplot2")
library("plotly")
library("knitr")
library("dplyr")

source("interactive_plot/Route_classification_chart.R")
chart_2 <-tabPanel(
  "Route classification",
  titlePanel("The relationship between the proportional death number of people and the type of the road.."),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "variable",
        label = "Time Range",
        choices = list("2017" = "route_death_2017_rate",
                       "2018 " = "route_death_2018_rate",
                       "2019" = "route_death_2019_rate",
                       "2017 - 2019" = "total_rate"),
        selected = "total_rate"
      )
    ),
    mainPanel(
      plotlyOutput("plotly_graph"),
      h6("Just Reminder: The propotional death number is calulate by the the death 
         number on certain road divided by the total number of time interval.")
    )
  )
)
