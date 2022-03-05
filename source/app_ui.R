library("shiny")
library("ggplot2")
library("plotly")

source("tabs/intro_tab.R")
source("tabs/report_tab.R")
source("tabs/summary_takeaway_tab.R")

ui <- navbarPage(
  title = "Project Example",
  position = "fixed-top",
  intro_tab,
  report_tab,
  summary_takeaway_tab
)
