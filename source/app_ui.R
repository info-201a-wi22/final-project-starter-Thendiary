library("shiny")
library("ggplot2")
library("plotly")
library("knitr")
library("dplyr")

source("../source/tabs/Restraint_chart_panel.R")
source("../source/tabs/auto_tab.R")
source("../source/tabs/report_tab.R")

ui <- navbarPage(
  title = "Project Example",
  chart,
  auto_scatter_tab,
  report
)
