chart <-tabPanel(
  "Restraint in car",
  titlePanel("ABCD"),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "variable",
        label = "Time Range",
        choices = list("2017" = "DRate2017",
                       "2018 " = "DRate2018",
                       "2019" = "DRate2019",
                       "2017 - 2019" = "DAvgRate"
                       )
      ),
      radioButtons("variable", 
                   label = h3("Time Range"),
                   choices = list("2017" = "DRate2017", 
                                  "2018" = "DRate2018", 
                                  "2019" = "DRate2019",
                                  "2017 - 2019" = "DAvgRate"), 
                   selected = "DAvgRate"),
    ),
    mainPanel(
      plotlyOutput("chart_ggplot"),
    )
  )
)