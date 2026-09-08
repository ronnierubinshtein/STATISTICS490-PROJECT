# **NYC Noise Complaints Analysis**

## **Introduction**

This project analyzes noise complaints associated with active clubs, bars or restaraunts in all New York City Boroughs. For simplicity, they will be referred to as "venues".The goal was to apply statistical concepts and methods to real world data and see if any major conclusions can be made.  

---

## **Research Question**

New York City is one of the epicenters of Night life in the world. As expected, the city receives thousands of noise complaints per year. Because around 74% of these entertainment venues are shared between Manhattan and Brooklyn, naturally these will be the loudest boroughs by aggregate. However, the research question I will be trying to answer is 

**Which NYC borough has the highest average number of noise complaints per entertainment venue?**

---

## **Data** 

The data is taken from the [2016 Parties In New York](https://www.kaggle.com/datasets/somesnm/partynyc/data) in Kaggle. Credit to Evgenii Vasilev on creating this by sourcing this from the [NYC open data portal](https://opendata.cityofnewyork.us/). A subset of the data contains every location tagged as 'club/bar/restaurant' with at least 10 noise complaints in total over the last 5 years (2012 - 2016). Every incident has corresponding information about the borough, city/neighborhood, latitude, longitude, and the number of calls recieved for this location in 2016. Fortunately, the spreadsheet was clean with no missing entries, NA's or unsupported values. 

### Collection Methods

Noise complaints are received by the NYPD’s hotline for non-emergencies, either through calls to 311 or their online website. Grievances filed are expected to be specific, with exact addresses, types of noise it is, length of duration, and the date/ time. 

---

## **Dependencies**

Any version of R later than version 4.0.0

R Studio or any other IDE that supports R 

**Libraries**
Tidyverse (Contains readr and ggplot2)

---

## **Methods**

Because complaint counts were heavily right-skewed, assumptions of normally distributed data were not made. For simplicity, the data was assumped to indepdent and identically distributed. 

Steps included:
- Data exploration + Visualization of complaint distributions
- Borough simualtions using bootstrapping to estimate the Mean-squared error of a estimator. 
- Construction of Confidence Intervals
- 2 Sample T-Tests between Boroughs

---

## Key Findings
There is no strong statistical evidence of differences in mean complaint levels between Brooklyn, Queens or Manhattan. The constructed confidence intervals showed substantial overlap, and the hypothesis tests failed to reject the null hypothesis in all comparisons. There is not a single borough that has the 'loudest venues'. 

--- 

## Future Improvements
Many additional statstical techniques can be added to this project. Because normality cannot be assumed, ANOVA is not applicable. Thus non-parametric methods should be used. 

- Shapiro - Wilk Test : Conservative test for normality
- Kruskal - Wallis Test: At least one of the Boroughs originates from a different distribution based on their respective medians. 
- Permutation Test: Checking if the probabililty distributions of two Boroughs are different 
- Chi-Square Test of Indepdence: Are two categorical variables associated with each other? 

**Linear Regressions**
Casuality should be explored in this project. 
Use OLS and Multiple Linear Regression to explore if certain dependent variables affect the amount of noise complaints a venue recieves. 

--- 

## License
This project is under the MIT License


