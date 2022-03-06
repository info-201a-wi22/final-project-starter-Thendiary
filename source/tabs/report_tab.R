library("shiny")
library("knitr")


report <- tabPanel(
  "Report",
  fluidRow(
    column(
      12,
      htmlOutput("report")
      #includeHTML("../docs/index.html")
    )
  )
)
