library("shiny")
library("ggplot2")
library("plotly")
library("knitr")
library("dplyr")

summary_take <- tabPanel(
  "Summary",
  titlePanel(h1("Summary Takeways", align = "center")),
  fluidRow(
    column(1),
    column(10,
           HTML("<h3><center>What is the spot death rate relating to using
                restraint in car accidents from 2017 to 2019?</center></h3>"),
           HTML("<photo><center>
                <img src= \"https://github.com/info-201a-wi22/final-project-starter-Thendiary/raw/main/docs/p01-proposal-assests/Seat_beltED.jpg\">
                </center></photo>"),
           HTML("<p>
                &nbsp;&nbsp;&nbsp;&nbsp;The chart about Restraint in Car shows
                that the death rate of  no retraint use in car is much higher
                than that of using restraint. Thus, we should learn from this
                and pay much more attention to the use of restraint to ensure
                our life safety, whenever driving or riding in a car.
                </p>"),
           HTML("<h3><center>Is there a link between road classification and
                death number in car accidents?</center></h3>"),
                HTML("<photo><center>
                <img src= \"https://github.com/info-201a-wi22/final-project-starter-Thendiary/raw/main/docs/p01-proposal-assests/country_roadED.jpg\">
                </center></photo>"),
           HTML("<p>
                &nbsp;&nbsp;&nbsp;&nbsp;According to the pie chart, every year,
                the proportional death number of people for highways in general
                is over 50%, which is surprisingly fixed.
                For other six type of road, they occupied the less 50% part.
                All in all, when people driving on highways in general are more
                likely to have car accidents, it is crucial for people to pay
                more attention when driving on the highway in general.
                </p>"),
           HTML("<h3><center>Which auto makes involved in most
                fatal crashes in US?</center></h3>"),
           HTML("<photo><center>
                <img src = \"https://github.com/info-201a-wi22/final-project-starter-Thendiary/raw/main/docs/p01-proposal-assests/car_makeED.jpg\">
                </center></photo>"),
           HTML("<p>
                &nbsp;&nbsp;&nbsp;&nbsp;Most automaker's involvement rate are
                consistent and small through the selected years. However the
                outliers are also obvious. Ford, Chevrolet, and few other brands
                , always have top involvment rate in fatal crashes. One
                limitation of our analysis is that such result may contributed
                by the large market shares of these brands and thus larger
                sample size. But owners of cars from these brands need to pay
                close attention to the build quality and design of their cars
                when encourter accidents.
                </p>"),
           HTML("<h3><center>What is the proportion of drug types in addictive
                driving cases?</center></h3>"),
           HTML("<photo><center>
                <img src = \"https://github.com/info-201a-wi22/final-project-starter-Thendiary/raw/main/docs/p01-proposal-assests/Abuse_drugsED.jpg\">
                </center></photo>"),
           HTML("<p>
                &nbsp;&nbsp;&nbsp;&nbsp;Most people in U.S. now are with a wrong
                opinion about drugs, especially about marijuana. However,
                marijuana, which is known as a gateway drug, is leading people
                to recognize the action of using drug as a way for entertainment
                . Accroding to the tree map, among those cases that are found
                positive in drug tests, almost a half of them are addicted to
                other drugs, which means they combined several different kinds
                of drugs and really think they are just relaxing
                themselves. Whether or not using drugs in daily life is
                people's right, but for others' lives and for driver's lives,
                when driving, make sure you are not under effect of drugs.
                </p>")),
    column(1)
  )
)