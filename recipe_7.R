
### dplyr Verb: summarise()  ###

# load tidyverse package
library(tidyverse)

# load the data as tibble in R
employees_data <- read_csv(file="https://github.com/iAnalyticsGeek/Datasets/raw/master/employee_data.csv")

# average income in 2015
employees_data %>% summarise(mean_income_2015 = mean(Income_in_2015))

# Average income in different years
employees_data %>% summarise(across(c(9:13), ~ mean(.x, na.rm = TRUE))) 

# alternative way to compute the average incomes in different years
employees_data %>% summarise_at(c(9:13), mean, na.rm=TRUE)

# summarizing the income variable for mean, median and Sum total statistics
temp <- employees_data %>% summarise_at(.vars = c(9:13), 
                                .funs = c(avg="mean", med="median", total="sum"))
# transpose the tibble
temp <- t(temp)

# summarizing the data for each gender group
employees_data %>% group_by(Gender) %>% summarise(avg_income_2015 = mean(Income_in_2015, na.rm = T),
                                                  med_income_2015 = median(Income_in_2015, na.rm = T),
                                                  min_income_2015 = min(Income_in_2015, na.rm = T),
                                                  max_income_2015 = max(Income_in_2015, na.rm = T),
                                                  std_dev_income_2015 = sd(Income_in_2015, na.rm = T)
                                                  )






