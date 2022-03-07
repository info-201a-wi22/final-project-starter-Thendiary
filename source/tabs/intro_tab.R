library("shiny")

intro <- tabPanel(
  "Introduction",
  titlePanel(h1("Carccident: Analysis of fatal motor vehicle crashes in US", align = "center")),
  fluidRow(
    column(1),
    column(10,
           HTML("<br>
           <p>&nbsp;&nbsp;&nbsp;&nbsp;
           We will analyze fatal car accidents from <strong>four main aspects</strong>: <i>Restraint, Drugs, Road type, and automaker</i> from 2017 to 2019 in the US. 
           <strong>Using Restraint</strong> is especially important on the car which is calculated by Spot Death Rate elating using retraint from 2017 to 2019. 
           We are also concerned about the <strong>type of road</strong> where rashes occured, because the roughness of the road also has some impact on the cause of car accidents. 
           <strong>Car models produced by different makers</strong> usually yield different results when encountring car crashes. 
           By evaluating how each automaker performs in fatal crashes, we will be able to model the typical characteristics of crashes and how their products protect the driver and passengers when accident takes place. 
           For these years, the most shocking news in U.S. about drug is the set up of pilot safe injection sites in Rhode Island, which makes this state become the first state in U.S. with legal injecion sites of drugs. 
           For this reason, combined with the data sets available, we choose addictive driving as one of our topics in this project. 
           When we first thought about this question, we just focused on the proportion of people whose test result is positive or negative, and tried to find if there is a clear result from this analysis. 
           With our analysis went deeper, we found that sometimes drugs themself are not the reason of the growing population addicted in drugs, but the opinion is.</p>"),
           ),
    column(1)
  ),
  fluidRow(
    column(12, align="center",
           
           HTML("<br>
                <picture>
                <img src= \"https://raw.githubusercontent.com/info-201a-wi22/final-project-starter-Thendiary/main/docs/p01-proposal-assests/Car_crash_intro.jpg\"
                </picture>"))
  )
)