# install packages
install.packages("remotes", dependencies = T)
remotes::install_github("tidyverse/dplyr")

# load the packages
library(dplyr)

# laod the data
employees_data <- read.csv(file="https://github.com/iAnalyticsGeek/Datasets/raw/master/employee_data.csv",
                           na.strings = c("", "NA"))

# view sample data
employees_data %>% # control and shift and m keys
  head()

# Install the complete tidyverse with:
install.packages("tidyverse", dependencies = TRUE)

# take first few rows and then view the structure of the dataset
employees_data %>% head(3) %>% str()

# plot the Gender variable
employees_data$Gender %>% table() %>% barplot()




