
### dplyr Verb: select()  ###

# load tidyverse package
library(tidyverse)

# load the data as tibble in R
employees_data <- read_csv(file="https://github.com/iAnalyticsGeek/Datasets/raw/master/employee_data.csv")

# Create a subset of employees_data for vars Age, Gender, Country, Income_in_2019
emp_data_sub <- employees_data %>% select(Age, Gender, Country, Income_in_2019)

# review the data
emp_data_sub %>% print()

# means of income in 2019 for each gender
employees_data %>% select(Gender, Income_in_2019) %>% 
  group_by(Gender) %>% summarise(AvgSal = mean(Income_in_2019))