# The `/source` Directory

All of our project code is found in this directory.  We further organize our code into
these sub-directories (TODO: Update/Delete)

|Source Directories | Brief Description|
|---------------| -----------------|
|[Original Kaggle Data processing](./kaggle_processed.R) | Processed the orginal dataset downloaded from Kaggle. Filter out observations between 2017 and 2019 and divided into sub csv files to avoid the github file size limit when push.
|[drug_data](./drug_data.R) | Analyse data about drugs in car accidents and develop a plot.
|[Death Number - Route Classification](./Route_classification.R) | Find the result of death number happened in different kind of road between 2017 and 2019.
|[spot death rate - using restraint](./fatality_relating_restraint.R) | Calculate the spot death rate relating using restraint from 2017 to 2019.
|[CarModel_Accidents](./CarModel_Accidents.R) | Analyze data about car manufactures and make a plot for the top 5 car manufacture.
|[Summary](./summary.R)| Summarise data from the above scripts to be used in the report.



# DEVELOPER NOTE 1: About ...
* All source code for your projects should go in the `/source` directory
* To organize your code, you might decide to create sub-directories, which is fine.
* If you use sub-directories, plese briefly describe them

# DEVELOPER NOTE 2:  Clear and Concise Documentation
* Please remember your audience (prospective employers, open source colleagues, TAs, Instructors). Therefore,
aim for clarity and conciseness.
* When done, be sure to delete these NOTE sections and the example CSV file (which are intended for you, of course, not your audience!)
