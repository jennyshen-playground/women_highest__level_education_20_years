#### Preamble ####
# Purpose: Tests a dataset to ensure it's validity.
# Author: Jason Ngo, Joyce Xuan, Jenny Shen
# Data: March 10, 2023
# Contact: jason_ngo@live.com
# License: MIT
# Pre-requisites: To have ran the cleaning script to test the cleaned datasets


#### Workspace setup ####
library(tidyverse)

#### Test data ####

## Test if Happiness has 3 unique values (this includes NA)
gss2018_cleaned$Happiness |> unique() |> length() >= 3

## Test if Highest Educ's has 21 unique values (this includes NA)
gss2018_cleaned$Highest_Educ_Level |> unique() |> length() >= 20

## Test if Occupational Prestige is greater than or equal to 10
gss2018_cleaned$Occupational_Prestige_Pct |> min(na.rm = TRUE) > 10

## Test if Occupational Prestige is less than 91
gss2018_cleaned$Occupational_Prestige_Pct |> max(na.rm = TRUE) < 91

## Test if sex is 2 (female)
gss2018_cleaned$sex |> unique() == 2

