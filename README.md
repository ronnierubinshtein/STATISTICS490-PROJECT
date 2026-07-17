# **NYC Noise Complaints Analysis**

## **Introduction**

This project analyzes noise complaints associated with entertainment venues in New York City. Using NYC 311 noise complaint data and entertainment venue information, this analysis investigates whether nightlife spaces differ in reported noise complaints across boroughs.

---

## Research Question

**Which NYC borough has the highest average number of noise complaints per entertainment venue?**

The goal is to evaluate whether differences exist in reported nightlife noise levels across boroughs while accounting for the skewed nature of complaint data.

---

## Motivation

New York City's nightlife industry contributes significantly to the city's economy but can also create negative externalities for surrounding communities. Noise complaints provide a measurable way to examine the impact of entertainment venues on nearby residents.

This project treats reported complaints as a proxy measure for nightlife-related noise disturbances.

---

## Data Sources

### NYC 311 Noise Complaints

- Source: NYC Open Data
- Year analyzed: 2016
- Contains over 225,000 noise complaint records
- Includes:
  - Complaint type
  - Date and time
  - Location
  - Borough
  - Address information

### Entertainment Venue Dataset

- Contains NYC locations categorized as clubs, bars, or restaurants
- Includes venues with repeated noise complaints from 2012–2016
- Variables include:
  - Venue location
  - Borough
  - Neighborhood
  - Complaint count

---

## Methods

The analysis was conducted using R.

Steps included:

1. Data cleaning and preparation
2. Exploratory data analysis
3. Visualization of complaint distributions
4. Borough-level comparisons
5. Statistical testing

Because complaint counts were heavily right-skewed, normality assumptions were not applied. Non-parametric methods were used for statistical comparisons.

---

## Statistical Approach

The distribution of complaints showed substantial skewness, with a small number of venues accounting for a large proportion of complaints.

The following methods were used:

- Distribution analysis
- Boxplots and comparative visualizations
- Summary statistics
- Kruskal-Wallis test for differences across boroughs

---

## Key Findings

*(Replace this section with your actual results)*

- Brooklyn and Manhattan contained the highest concentration of nightlife venues.
- Complaint counts were highly concentrated among a small number of venues.
- Borough differences were evaluated using non-parametric statistical methods.


