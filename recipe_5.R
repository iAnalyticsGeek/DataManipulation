
### dplyr Verb: mutate()  ###

# load tidyverse package
library(tidyverse)

# load the data as tibble in R
employees_data <- read_csv(file="https://github.com/iAnalyticsGeek/Datasets/raw/master/employee_data.csv")

# quick look at the data
employees_data %>% head()

# create a column for average salaries
employees_data <- employees_data %>% mutate(AvgIncome = (employees_data$Income_in_2015 + 
                                                           employees_data$Income_in_2016 + 
                                                           employees_data$Income_in_2017 + 
                                                           employees_data$Income_in_2018 + 
                                                           employees_data$Income_in_2019)/5)

# alternate to above computation
employees_data <- employees_data %>% rowwise() %>% mutate(AvgIncome2 = mean(c_across(c(9:13))))

# overwrite the existing variable with new values
# plot histogram
hist(employees_data$AvgIncome)

employees_data <- employees_data %>% mutate(AvgIncome = log(AvgIncome))
# plot histogram
hist(employees_data$AvgIncome)







