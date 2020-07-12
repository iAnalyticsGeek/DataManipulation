
### dplyr Verb: arrange()  ###

# load tidyverse package
library(tidyverse)

# load the data as tibble in R
employees_data <- read_csv(file="https://github.com/iAnalyticsGeek/Datasets/raw/master/employee_data.csv")

# Average incomes
employees_data <- employees_data %>% rowwise() %>% mutate(AvgIncome = mean(c_across(c(9:13))))

# arrange the data by age in descending order
employees_data %>% arrange(desc(Age))

# sort the data by gender var and then by age in descending order
employees_data %>% arrange(Gender, desc(Age))

# top five individuals with highest average income
emp <- employees_data %>% arrange(desc(AvgIncome)) %>% head(5)







