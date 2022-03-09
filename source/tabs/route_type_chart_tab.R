library("shiny")
library("ggplot2")
library("plotly")
library("knitr")
library("dplyr")

source("source/interactive_plot/Route_classification_chart.R")
chart_2 <-tabPanel(
  "Route classification",
  titlePanel("The relationship between the proportional death number of people 
             and the type of the road"),
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
      h6("Just Reminder: The propotional death number is calulate by the the 
          death number on certain road divided by the total number of time 
         interval."),
      p("The chart above shows the number of road deaths by category between 
        2017 and 2019. As shown in the chart, of the nine roads in the dataset, 
        of all the fatal crashes that occurred during the selected three-year 
        period, people were more likely to crash when they were driving on 
        highways. We can analyze the road conditions of these three highways
        (state highway, U.S. Highway and interstate) to warn drivers that they 
        should pay attention to protect their own safety and the safety of 
        others when driving on highways."),
      h6("Just reminder: the highways in general is the collective name of 
      state highway, U.S. Highway and interstate")
    )
  )
)
