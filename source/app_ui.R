library("shiny")
library("ggplot2")
library("plotly")
library("knitr")
library("dplyr")

source("../source/tabs/Restraint_chart_panel.R")
source("../source/tabs/auto_tab.R")
source("../source/tabs/report_tab.R")
source("../source/tabs/intro_tab.R")
source("../source/tabs/drug_analysis_tab.R")

ui <- navbarPage(
  title = "Project Example",
  intro,
  chart,
  auto_scatter_tab,
  drug_tab,
  report
)
