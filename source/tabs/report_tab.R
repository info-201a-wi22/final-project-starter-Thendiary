library("shiny")
library("knitr")


report <- tabPanel(
  "Report",
  fluidRow(
    column(
      12,
      includeHTML("../docs/index.html")
    )
  )
)
