# <div align = "center">Carccident: Analysis of fatal motor vehicle crashes in US</div>

**<div align = "center">Yuhan Zhang, Steven Chen, Qiuqing(Echo) Ge, Ximing Sun</div>**

<br>
<div align = "center">
The Information School - University of Washington<br>
INFO-201: Technical Foundations of Informatic<br>
David G Hendry<br>
Winter 2022
</div>

<br>

<!--![Car Crash Scene](https://github.com/Thendiary/final-project-starter-Thendiary/blob/main/docs/p01-proposal-assests/Car_crash.jpg)-->
<p align = "center">
  <img src ="https://github.com/Thendiary/final-project-starter-Thendiary/blob/main/docs/p01-proposal-assests/Car_crash.jpg">
</p>

<br>

## <div align = "center">Abstract</div>

&nbsp;&nbsp;&nbsp;&nbsp;We are concerned with car accidents, because of the high death rate of car accidents. To address this concern, we plan to use R programming to show some facts and pay more attention to driving safety issues and obey traffic rules.

_Keywords_: car accident, severity, the U.S., factor.


## <div align = "center">Introduction</div>

&nbsp;&nbsp;&nbsp;&nbsp;We will analyze **car accidents** from _**four main**_ aspects: **death rate, regions, and road classification, weather conditions** from _**2017 to 2019**_ in the US. The _death rate_ is **calculated** by dividing the number of people who die in car accidents by the number of people involved in car accidents. When locations are described here, they are **specific to different states** in the US. We are also concerned about the location of happening car accident, because the **roughness of the road** also has some impact on the cause of car accidents. Under this condition, we will also mention the classification of roads in this dataset to show the influence of status of the road condition. Sometimes the **weather conditions** also have an influence on car accidents. We also want to introduce this aspect to fulfill our project and mention the importance of the outside environment for people who drive the cars.


## <div align = "center">Design Situation</div>

#### Date Frame: :earth_americas:

&nbsp;&nbsp;&nbsp;&nbsp;Our project is about **our life - car accidents**. This question is also concerned by the United States Department of Transportation. The United States Department of Transportation has already collected the data related to car accidents from 1975-2019. The inspiration of our project is mainly from **two related research**. The first one is about the relationship between the drivers’ personality and the possibility of being involved in car accidents [(Hu, 2020)](https://www.hindawi.com/journals/jat/2020/9084245/), while the second is mainly about the relationship between laws and traffic accidents [(Rolison, 2018)](https://www.sciencedirect.com/science/article/pii/S0001457518300873 ). For our project, we want to emerge in the relationship between road classification, natural conditions and region, using R language to analyse and summarize data to get our final conclusions.

#### Human Values: :hearts:

&nbsp;&nbsp;&nbsp;&nbsp;**Love, Empathy, Responsibility**. These values are derived from the _**panic**_ after seeing a relative in a car accident or shocking images in the daily news. Public service announcements about drunk driving and tired driving often appear on television, the debris from crashes, screeching brakes, injured people lying on the road. This series of scenes will make people feel really dismal. We sincerely hope from the bottom of our hearts that traffic accidents can be reduced. Then, **Responsibility will be activated by love and empathy.**

#### Direct Stakeholders: :car:

&nbsp;&nbsp;&nbsp;&nbsp;We think the direct stakeholders are **drivers, passengers and policemen**. As for drivers, they are likely to encounter car accidents, since they drive the cars all day. Because the passengers are likely to be involved in car accidents by chance. Policemen can be injured by car accidents while directing traffic.

#### Indirect Stakeholders: :boom:

&nbsp;&nbsp;&nbsp;&nbsp;We think indirect stakeholders are **drivers' families, automobile manufacturers, insurance companies**. If drivers are injured in car accidents or need to take responsibility for these car accidents, their family may face substantial reparations. The automobile manufacturers are also impacted by car accidents. Definitely, people will not buy the cars that are always involved in accidents. In this case, the manufacturers of this kind of car will be bankrupt. In car accidents, Insurance companies pay for the owner of the car whose car has collapsed.

#### Benefits: :dollar:

&nbsp;&nbsp;&nbsp;&nbsp;With the result from this project, drivers and police would **pay more attention to certain conditions** which would cause severe consequences. Manufacturers would learn how to **prevent these accidents happening** when in bad weather conditions. We suppose to call up attention from all society about the possibility.

#### Harm: :bug:

&nbsp;&nbsp;&nbsp;&nbsp;When we sort out this data, insurance companies may increase the insurance amount for accidents or related vehicles and reduce the payment amount of insurance companies. This will **harm the interests of car owners**.


## <div align = "center">Research Questions</div>

- **“What is the death rate in every car accident?”**.
Nowadays, road traffic safety is deteriorating, and road traffic accidents have become a major problem affecting society and people's lives. We want to use the striking death rate to alert people and improve this situation.

- **"Is there a link between road classification and death rate in car accidents?"** In states with higher income, does the number of car accidents increase because of the increment of car ownership? Since people are inclined to race fast whenever they are, roads with better condition, usually with higher classification, could lead drivers to race on them.

- **"Which auto makes involved in most fatal crahes in US?**  Each manufacturers design their products in different ways. Although model regulations and laws have enforce many safety features in the automobile industry, auto makers always make compromises when it comes to cost and safety. Using datasets we gathered, we want to find makers that involved the most in fatal crashes. Then based on the environment conditions and crash characteristics of each fatal crahes, depicts the model of what are common factors of fatal crahes of each auto makers.


## <div align = "center">The Dataset</div>

#### **[FARS: Fatal Motor Vehicle Accidents vehicle[](https://www.nhtsa.gov/node/97996/251)**<br>
&nbsp;&nbsp;&nbsp;&nbsp;[^1]FARS is a census of fatal motor vehicle crashes with a set of data files documenting all qualifying fatalities that occurred within the 50 States, the District of Columbia, and Puerto Rico since 1975. This dataset contains 33519 observations of fatal motor vehicle crashes that occurred on public roads. The data consists of 95 properties that documented crash characteristics and environmental conditions of each incident. The data is collected and organized by the National Highway Traffic Safety Administration and aims to reduce the staggering human toll and property damage that motor vehicle traffic crashes impose on our society.

#### **[US-Accidents: A Countrywide Traffic Accident Dataset](https://www.kaggle.com/sobhanmoosavi/us-accidents)**<br>
&nbsp;&nbsp;&nbsp;&nbsp;This dataset crawls traffic accidents data from online data providers including several APIs that stream the traffic event data. These APIs broadcast traffic events captured by a variety of entities, such as the US and state departments of transportation, law enforcement agencies, traffic cameras, and traffic sensors within the road-networks. The dataset is collected and organized by Sobhan Moosavi and shared on Kaggle. In the dataset Mossavi uses 47 properties to document the environmental conditions, crash characteristics, and impact to the traffic. The current dataset has about 1.5 millions(1516064) observations across 49 states in the US, excluding data from the state of Hawaii.


#### **[Fatal Motor Vehicle Accidents vehicle](https://data-usdot.opendata.arcgis.com/datasets/fatal-motor-vehicle-accidents-vehicle/explore)**<br>
&nbsp;&nbsp;&nbsp;&nbsp;This dataset is collected and organized by the National Highway Traffic Safety Administration and aims to reduce the staggering human toll and property damage that motor vehicle traffic crashes impose on our society. It consists of more than 60 unique properties that documented information about the vehicle involved in fatal crashes in the year of 2019 including the model, year, tires, and etc. It now had documented 28,972 vehicles involved.


## <div align = "center">Expected Implications</div>

&nbsp;&nbsp;&nbsp;&nbsp;Impacted by our car accident data, Vehicle manufacturers will adhere to the principle of **"safety"**. Government will comprehensively strengthen hidden danger investigation, law enforcement management, artificial intelligence application, focusing on strengthening safety management and road traffic infrastructure construction of vehicles, roads and transportation enterprises. Policy maker will attach importance on Road Traffic Safety Law. Traffic violations that easily lead to traffic accidents will be  severely investigated and punished, such as drunk driving, overspeed driving, fatigue driving and so on. Road safety facilities should be comprehesively upgraded. In addition, it is also very important to educate citizens about traffic safety. Media workers will also pay more attention to this issue. The laws, regulations and safety knowledge of road traffic safety will be widely publicized in important sections of newspapers, radio, TV networks and other news media, and videos of typical traffic accident cases can be broadcast to enhance citizens' awareness of consciously abiding by laws and regulations.


## <div align = "center">Limitations</div>

&nbsp;&nbsp;&nbsp;&nbsp;We have two limitations for our project. :one: The first one is about the not available number, and the second one is about the loss of data. There may be some unavailability of resources for the aspect of weather conditions, since it is too hard for people to measure or attain the exact data about the weather condition when the car accident happened. Though we can roughly get some statistical data about the weather conditions by searching the local weather broadcast, it is impossible to get the exact measurements about the weather conditions. :two: Another limitation is that the data related to the car accidents we found on the Internet is not comprehensive. These data found on the Internet only include the car accidents which are reported to police offices or insurance companies, which means some small scratching accidents would be likely to address the issues in private instead of reporting to police departments or insurance companies.


## <div align = "center">Acknowledgements</div>

&nbsp;&nbsp;&nbsp;&nbsp;Thanks to the Internet, and thanks to the United States Department of Transportation, which collects this data every year and publishes it without any fee.


## <div align = "center">References</div>

- Hu, Lin, et al. “A Study on Correlation of Traffic Accident Tendency with Driver Characters Using in-Depth Traffic Accident Data.” _Journal of Advanced Transportation_, <br /Hindawi, 2 June 2020, https://www.hindawi.com/journals/jat/2020/9084245/.

- Rolison, Jonathan J., et al. “What Are the Factors That Contribute to Road Accidents? an Assessment of Law Enforcement Views, Ordinary Drivers' Opinions, and Road Accident Records.” _Accident Analysis &amp; Prevention_, Pergamon, 9 Mar. 2018, https://www.sciencedirect.com/science/article/pii/S0001457518300873.



## <div align = "center">Appendix A: Questions</div>

_Can we change the structure of our project when doing the project?(We mean that can we change the aspects of our analysis?)_



[^1]: We are only using datasets from 2017 to 2019. Direct links to those three datasets are below:<br>
2017: https://www.nhtsa.gov/file-downloads?p=nhtsa/downloads/FARS/2017/National/ <br>
2018: https://www.nhtsa.gov/file-downloads?p=nhtsa/downloads/FARS/2018/National/ <br>
2019: https://www.nhtsa.gov/file-downloads?p=nhtsa/downloads/FARS/2019/National/







<!--# Title of your Project: Project Proposal

**TODO**: Edit this file. Your project proposal goes here. Save and delete the developer notes when done.

## Developer Notes

* **Where is the project brief?**  [`../instructions/project-design-brief.pdf`](../instructions/project-design-brief.pdf).
* **Making Progress**: We understand this work might be difficult. Also, we understand that your project ideas might not be completely worked out. So, we ask that you do the best you can. You will receive specific guidance from your TA and constructive feedback. We are confident that you will succeed!
* **What should be included in the proposal?** Every proposal will be different. It depends on your particular project.  That said, in the table below you will find the expected report elements.  It is important that you engage with and respond to the the Design Brief.
* **How should the proposal be formatted?** You should format your proposal using Markdown in this file. You should aim for a professional presentation - clear, concise, interesting, and free of spelling and grammatical errors.
* **What headings should we use?** As needed, the suggested headings below can be revised and new headings and sub-headings can be added. Please use headings, bullet lists, tables, figures, and other markdown code effectively - seek a professional presentation.
* **Finishing up.** When you are finished writing and formatting your proposal, save these developer notes(they might useful in the future). Then, delete them.
* **Questions?** If you have questions, please ask your TA or post on Teams.

|Element | Brief Description|
|---------------| --------------
|Code name | Give your project a _code name_, a short, evocative name for efficiently referring to your project. Your code name does not change! Examples: _Jazz-4_, _Rocking Fish_, etc. |
|Project title| Give your project a concise, interesting title that summarizes the entirety of your project. (Your title can change on subsequent deliverables.) |
|Authors | Names of your team members and contact information (email addresses). |
|Affiliation |  INFO-201: Technical Foundations of Informatics - The Information School - University of Washington |
|Date | Winter 2022|
|Abstract | No more than three sentences that summarize your project. Focus on the very most important aspects. For example: **(1)** "Our main question is .... This question is important because .... To address the question, we will ...." **(2)** "We are concerned with ..., becuase .... To address this concern, we plan to ...." **(3)** "Consider that ....  This is important because .... Accordingly, we plan to ...."   |
|Keywords | 3-5 keywords that summarize your project.  (e.g., "Keywords: human physiology; bicycle exercise; elderly; power and heart rate times-series data") |
|1.0 Introduction | Briefly introduce your project. (about 150 words) |
|2.0 Design Situation | Use short sub-sections to describe your topic and the setting (that is, the sociotechnical situation), including project framing, human values, direct and indirect stakeholders, possible harms and benefits. See the Design Brief, section B.3. **Note**: You *must* include three citations to related work (URLs to similar work, high quality articles from the popular press, reseach papers, etc. ). You may find it helpful to include a figure.  (about 400 words) |
|3.0 Research questions | 3-5 research questions. What motivates the questions? Why are they important? See the Deign Brief, section B.4. (about 150 words) |
|4.0 The Dataset | See Design Brief, setions B.5 (_Size and complexity_) and B.6 (_Data provenance_). Use short sub-sections for describing the size and complexity of the dataset and for describing the origins fo the data. (about 400 words) |
|5.0 Expected Implications | Assuming you answer your research questions, briefly describe the expected or possible implications for technologists, designers, and policymakers. (about 150 words) |
|6.0 Limitations | What limitations might you need to address? Briefly discuss. (about 150 words) |
|Acknowledgements | Is there anyone you would like to thank? A librarian who helped you with your research? A Teaching Assistant? A friend who helped you find your data? Say thank you in this section.|
|References | Include citations to your three references. See 2.0 Introduction. If you like, you can cite more than three references.  Please use a standard citation style of your choice.  See [Citing Sources](https://guides.lib.uw.edu/research/citations) at the UW Library. |
|Appendix A: Questions| Do you have questions for your TA or instructor?  Include them here.|
-->
