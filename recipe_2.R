
# Use tibble

# laod the data
employees_data <- read.csv(file="https://github.com/iAnalyticsGeek/Datasets/raw/master/employee_data.csv",
                           na.strings = c("", "NA"))

# load tidyverse
library(tidyverse)

# create tibble dataframe
employees_data2 <- as_tibble(employees_data)

# print traditional dataframe
print(employees_data)

# print tibble dataframe
print(employees_data2)

# subsetting 'Age' variable
employees_data[, 3]

# subsetting a tibble
employees_data2[, 3]

# load the data as tibble in R
employees_data <- read_csv(file="https://github.com/iAnalyticsGeek/Datasets/raw/master/employee_data.csv")

employees_data
