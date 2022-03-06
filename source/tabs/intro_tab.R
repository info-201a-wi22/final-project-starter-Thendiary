library("shiny")

intro <- tabPanel(
  "Introduction",
  titlePanel(h1("Carccident: Analysis of fatal motor vehicle crashes in US", align = "center")),
  fluidRow(
    column(2),
    column(10,
           HTML())
  )
)