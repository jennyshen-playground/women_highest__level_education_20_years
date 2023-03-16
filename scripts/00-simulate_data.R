#### Preamble ####
# Purpose: Simulates the primary dataset of interest
# Author: Jason Ngo, Joyce Xuan, Jenny Shen
# Data: March 10, 2023
# Contact: jason_ngo@live.com
# License: MIT
# Pre-requisites:
# Any other information needed?: None

#### Workspace setup ####
library(tidyverse)
set.seed(383)

#### Simulate data ####

## Simulate 1000 survey respondants
## Focused on simulating a data set that covers occupational prestige level (percentage 10-89)
## and highest level of education (values from 0-20)
## and the happiness level of the participant (1-3) 
simulated_educ_ocpres_data <- tibble(
  Highest_Education_Level = c(
    runif(n = 1000, min = 1, max = 21) |> floor()
  ),
  Occupational_Prestige = c(
    runif(n = 1000, min = 10, max = 90) |> floor()
  ),
  Happiness = c(
    runif(n = 1000, min = 1, max = 4) |> floor()
  )
)


