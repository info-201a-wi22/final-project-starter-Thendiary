library("shiny")
library("ggplot2")
library("plotly")

source("../source/tabs/Restraint_chart_panel.R")
#source("../source/tabs/report_tab.R")

ui <- navbarPage(
  title = "Project Example",
  position = "fixed-top",
  chart,
  #report
)
