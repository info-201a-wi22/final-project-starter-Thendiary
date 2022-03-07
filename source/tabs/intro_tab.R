library("shiny")

intro <- tabPanel(
  "Introduction",
  titlePanel(h1("Carccident: Analysis of fatal motor vehicle crashes in US", align = "center")),
  fluidRow(
    column(2),
    column(8,
           HTML("<p>&nbsp;&nbsp;&nbsp;&nbsp;
           We will analyze fatal car accidents from <strong>four main aspects</strong>: <i>Restraint, Drugs, Road type, and automaker</i> from 2017 to 2019 in the US. 
           <strong>Using Restraint</strong> is especially important on the car which is calculated by Spot Death Rate elating using retraint from 2017 to 2019. 
           We are also concerned about the <strong>type of road</strong> where rashes occured, because the roughness of the road also has some impact on the cause of car accidents. 
           <strong>Car models produced by different makers</strong> usually yield different results when encountring car crashes. 
           By evaluating how each automaker performs in fatal crashes, we will be able to model the typical characteristics of crashes and how their products protect the driver and passengers when accident takes place. 
           For addictive driving, we analysis the data of drug use in severe car accidents, which turns out that nearly half of people, who was tested for drugs, is under the effect of addictive drugs while they encountered car crashes. 
           People are using them without right recognition about drugs, heading to what them think is \"happiness\" and \"freedom\". 
           We advise all drivers to make sure you are in clear consciousness while you are driving, or it is easy to get involved in car crashes with serious consequence.</p>"),
           
           HTML("<p>&nbsp;&nbsp;&nbsp;&nbsp;
           ")),
    column(2,
           HTML("<p>&nbsp;&nbsp;&nbsp;&nbsp;"))
  )
)