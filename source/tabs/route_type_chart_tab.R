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
                       "2017 - 2019" = "total_rate")
      ),
      selectInput(
        inputId = "shape",
        label = "Choose One type graph you interested",
        choices = list("Bar chart!==_==" = "bar",
                       "Scatter graph :)" = "scatter")
      )
    ),
    mainPanel(
      plotlyOutput("plotly_graph")
    )
  )
)
