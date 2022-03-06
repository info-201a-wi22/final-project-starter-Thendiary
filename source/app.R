library("shiny")
library("ggplot2")
library("plotly")
library("knitr")
library("dplyr")

source("../source/app_ui.R")
source("../source/app_server.R")

shinyApp(ui = ui, server = server)