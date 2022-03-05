library("shiny")
library("ggplot2")
library("plotly")
library("dplyr")

source("interactive_plot/Route_classification_pie_chart.R")
source("interactive_plot/Restraint_Chart.R")

server <- function(input, output) {
  
# This is the graph.
    output$chart_ggplot <- renderPlotly({
      return(build_graph(fatality, input$variable))
    })
}