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
      p("The chart analyzes the average of on-the-spot death rates from 2017 to 
        2019 and over three years for the use of types of  Restraint. From the 
        graph, we can clearly see that the death rate in cars without any safety
        measures (about 41%) is much higher than that in cars with safety 
        measures (about 5%/ about %14). From this, we can draw the conclusion 
        that it is necessary to use safety restraint in driving and 
        riding in car.")
    )
  )
)