library("shiny")
library("ggplot2")
library("plotly")
library("knitr")
library("dplyr")

#source("../source/interactive_plot/Restraint_Chart.R")
source("../source/interactive_plot/Route_classification_chart.R")
source("../source/interactive_plot/auto_tab_plot.R")
source("../source/interactive_plot/drug_plot.R")

server <- function(input, output) {
  
# This is the graph.
    #output$chart_ggplot <- renderPlotly({
    #  return(build_graph(fatality, input$variable))
    #})
    
    output$plotly_graph <- renderPlotly({
      return(graph(data, input$variable, input$shape))
    })
    
    auto_choice <- reactive({
      if (input$year == 3) {
        auto_scatter(make_all)
      } else if (input$year == 2017) {
        auto_scatter(make_summary_2017)
      } else if (input$year == 2018) {
        auto_scatter(make_summary_2018)
      } else if (input$year == 2019) {
        auto_scatter(make_summary_2019)
      }
    })
    output$auto_scatter_plot <- renderPlotly({
      auto_choice()
    })
    
    output$report <- renderUI({
      includeHTML("../docs/index.html")
    })
    
    output$drug <- renderPlot({
      plot_drug(input$drugs)
    })
}
