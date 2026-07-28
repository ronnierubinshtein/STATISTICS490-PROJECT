#Clear Environment
rm(list = ls())

#Packages
install.packages("tidyverse")
library(tidyverse)

#Load in data
bar <- read_csv("FINALPROJECT/bar_locations.csv")
View(bar)

#How many Cities or Boroughs exist in the data set
length(unique(bar$City))
length(unique(bar$Borough))

#Ranking the locations from most complaints to least 
bar <- bar %>%
arrange(, desc(bar$num_calls))
view(bar)

#Plotting the distribution of complaints 
bar %>%
ggplot(aes(x = num_calls)) + geom_histogram(bins =25)

#Grouping by borough and for each borough calculating mean and std. deviation. 
#This will be used for confidence intervals later
CI <- bar %>%
  group_by(Borough) %>%
  summarise(num = length(Borough), 
            avg = mean(num_calls),
            std = sd(num_calls))
view(CI)

#Percentage of venues in Manhattan and Brooklyn
(1076+736)/2440

#Separate Data for each Borough 
Manhattan <- bar %>% 
  filter(Borough == "MANHATTAN")

Brooklyn <- bar %>% 
  filter(Borough == "BROOKLYN")

Queens <- bar %>% 
  filter(Borough == "QUEENS")

Staten <- bar %>% 
  filter(Borough == "STATEN ISLAND")

Manhattan <- bar %>% 
  filter(Borough == "MANHATTAN")

Bronx <- bar %>% 
  filter(Borough == "BRONX")

#Setting sample size to 50 and number of simulation to 100
n <- 50
n.sims <- 100

#Creating an empty vector of length equivalent to n.sims to store results
sample.means <- rep(NA, n.sims)

#Making the experiment reproducible
set.seed(330192)

#Running the simulation for each Borough by taking a sample of 50 venues 100 times. 
for(sim.number in 1:100 ) {
  
  X <- sample(Manhattan$num_calls,50,replace = TRUE)
  #Finding the average of the simulation
  sample.mean <- mean(X)
  #Storing the average of the simulation in the sample.means vector
  sample.means[sim.number] <- sample.mean

}      

#Calculating the mean and variance of the estimators
mean(sample.means)
var(sample.means)

#BRONX
for(sim.number in 1:100 ) {
  
  X <- sample(Bronx$num_calls,50,replace = TRUE)
  sample.mean <- mean(X)
  sample.means[sim.number] <- sample.mean
  
}      

mean(sample.means)
var(sample.means)

mean(sample.means)

#QUEENS
for(sim.number in 1:100 ) {
  
  X <- sample(Queens$num_calls,50,replace = TRUE)
  sample.mean <- mean(X)
  sample.means[sim.number] <- sample.mean
  
}      

mean(sample.means)
var(sample.means)

#BROOKLYN
for(sim.number in 1:100 ) {
  
  X <- sample(Brooklyn$num_calls,50,replace = TRUE)
  sample.mean <- mean(X)
  sample.means[sim.number] <- sample.mean
  
}      

mean(sample.means)
var(sample.means)

#STATEN ISLAND
for(sim.number in 1:100 ) {
  
  X <- sample(Staten$num_calls,50,replace = TRUE)
  sample.mean <- mean(X)
  sample.means[sim.number] <- sample.mean
  
}      

mean(sample.means)
var(sample.means)

#Setting Z-score for 95% Confidence Interval
z <- qnorm(0.975)


#Adding a lower and upper bound confidence interval columns to the CI data frame. 
CI <- CI %>%
  mutate( 
lower = (avg - z * std / sqrt(num)),
upper = (avg + z * std / sqrt(num))
  )
view(CI)

#Conducting a 2-sample t-test to see if there is a statistically significant difference
t.test(Queens$num_calls,Brooklyn$num_calls)
t.test(Queens$num_calls,Manhattan$num_calls)
t.test(Brooklyn$num_calls,Manhattan$num_calls)