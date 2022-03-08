library(shiny)
library(dplyr)
library(plotly)
library(ggplot2)

source("source/interactive_plot/Restraint_Chart.R")

chart <-tabPanel(
  "Restraint in car",
  titlePanel(h1("Fatality rate with Use of Restraint", align = "center")),
  sidebarLayout(
    sidebarPanel(
      radioButtons(
                   inputId = "YR", 
                   label = h3("Time Range"),
                   choices = list("2017" = "DRate2017", 
                                  "2018" = "DRate2018", 
                                  "2019" = "DRate2019",
                                  "2017 - 2019" = "DAvgRate"), 
                   selected = "DAvgRate"),
    ),
    mainPanel(
      plotlyOutput("chart_ggplot"),
    )
  )
)