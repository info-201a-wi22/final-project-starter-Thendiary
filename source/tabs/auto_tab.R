library("shiny")
library("ggplot2")
library("plotly")
library("dplyr")

source("interactive_plot/auto_tab_plot.R")

auto_scatter_tab <- tabPanel(
  "Auto Maker",
  titlePanel(h1("Auto Makers involvement in fatal car crashes", align ="center")),
  sidebarLayout(
    sidebarPanel(
      radioButtons(
        inputId = "year",
        label = h3("Select the year to be presented", align = "center"),
        choices = list("Three Years Average" = 3,
                       "2017" = 2017,
                       "2018" = 2018,
                       "2019" = 2019),
        selected = 3
      )
    ),
    mainPanel(
      plotlyOutput("auto_scatter_plot"),
      HTML("&nbsp;&nbsp;&nbsp;&nbsp;The above chart demonstrates the percentage of involvement of each auto makers
           from 2017 to 2019. As indicated by the graph, the outliers are obvious and top five automakers made up of
           <strong>about 25%</strong> of all fatal crashes among 70 auto makers the datasets account for occured in 
           the selected three years period. By analysing the crash characteristics and environmental conditions of 
           crashes of those five brands, we will be able to model the typical characteristics of crashes and how their 
           products protect the driver and passengers when accident takes place.")
    )
  )
)