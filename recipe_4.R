
### dplyr Verb: filter()  ###

# load tidyverse package
library(tidyverse)

# load the data as tibble in R
employees_data <- read_csv(file="https://github.com/iAnalyticsGeek/Datasets/raw/master/employee_data.csv")

# subset the data for gender == female
female_employees <- employees_data %>% filter(Gender=='Female')

# Male employees >= 40 years in India earning < $20000
employees_data %>% filter(Gender=='Male') %>% filter(Age>=40) %>% filter(Country=='INDIA') %>% 
  filter(Income_in_2019 < 20000)

# concise code
employees_data %>% filter(Gender=='Male' & Age>=40 & Country=='INDIA' & Income_in_2019 < 20000)

# employees not living in California and are married, age between 30 and 40 years
employees_data %>% filter(between(Age, 30, 40) & State!='California' & Marital_Status=='Married')





