#### Preamble ####
# Purpose: Gather the relevant points, clean up the column names and refine their values
# Author: Jason Ngo, Joyce Xuan, Jenny Shen
# Data: March 10, 2023
# Contact: jason_ngo@live.com
# License: MIT
# Pre-requisites:
# Any other information needed?: None


#### Workspace setup ####
library(tidyverse)
library(haven)
library(here)

#### Clean data ####
### First, select variables corresponding to occupational prestige, highest education level, happiness, spouse work status and sex of respondent ###
gss2000_cleaned <- gss2000_data |> select(prestg10, educ, happy, spwrksta, sex)
gss2002_cleaned <- gss2002_data |> select(prestg10, educ, happy, spwrksta, sex)
gss2004_cleaned <- gss2004_data |> select(prestg10, educ, happy, spwrksta, sex)
gss2006_cleaned <- gss2006_data |> select(prestg10, educ, happy, spwrksta, sex)
gss2008_cleaned <- gss2008_data |> select(prestg10, educ, happy, spwrksta, sex)
gss2010_cleaned <- gss2010_data |> select(prestg10, educ, happy, spwrksta, sex)
gss2012_cleaned <- gss2012_data |> select(prestg10, educ, happy, spwrksta, sex)
gss2014_cleaned <- gss2014_data |> select(prestg10, educ, happy, spwrksta, sex)
gss2016_cleaned <- gss2016_data |> select(prestg10, educ, happy, spwrksta, sex)
gss2018_cleaned <- gss2018_data |> select(prestg10, educ, happy, spwrksta, sex)
gss2021_cleaned <- gss2021_data |> select(prestg10, educ, happy, spwrksta, sex)

### Next, we want to count the number of housewives there are. So, we will filter by male respondents with spouses that kept the house ###
gss2000_housewife <- gss2000_cleaned |> filter(sex ==  1 & spwrksta == 7)
gss2002_housewife <- gss2002_cleaned |> filter(sex ==  1 & spwrksta == 7)
gss2004_housewife <- gss2004_cleaned |> filter(sex ==  1 & spwrksta == 7)
gss2006_housewife <- gss2006_cleaned |> filter(sex ==  1 & spwrksta == 7)
gss2008_housewife <- gss2008_cleaned |> filter(sex ==  1 & spwrksta == 7)
gss2010_housewife <- gss2010_cleaned |> filter(sex ==  1 & spwrksta == 7)
gss2012_housewife <- gss2012_cleaned |> filter(sex ==  1 & spwrksta == 7)
gss2014_housewife <- gss2014_cleaned |> filter(sex ==  1 & spwrksta == 7)
gss2016_housewife <- gss2016_cleaned |> filter(sex ==  1 & spwrksta == 7)
gss2018_housewife <- gss2018_cleaned |> filter(sex ==  1 & spwrksta == 7)
gss2021_housewife <- gss2021_cleaned |> filter(sex ==  1 & spwrksta == 7)


### Rename columns so they are easier to read ###
gss2000_cleaned <- gss2000_cleaned |> rename(
  Occupational_Prestige_Pct = prestg10,
  Highest_Educ_Level = educ,
  Happiness = happy,
)

gss2002_cleaned <- gss2002_cleaned |> rename(
  Occupational_Prestige_Pct = prestg10,
  Highest_Educ_Level = educ,
  Happiness = happy,
)

gss2004_cleaned <- gss2004_cleaned |> rename(
  Occupational_Prestige_Pct = prestg10,
  Highest_Educ_Level = educ,
  Happiness = happy,
)

gss2006_cleaned <- gss2006_cleaned |> rename(
  Occupational_Prestige_Pct = prestg10,
  Highest_Educ_Level = educ,
  Happiness = happy,
)

gss2008_cleaned <- gss2008_cleaned |> rename(
  Occupational_Prestige_Pct = prestg10,
  Highest_Educ_Level = educ,
  Happiness = happy,
)

gss2010_cleaned <- gss2010_cleaned |> rename(
  Occupational_Prestige_Pct = prestg10,
  Highest_Educ_Level = educ,
  Happiness = happy,
)

gss2012_cleaned <- gss2012_cleaned |> rename(
  Occupational_Prestige_Pct = prestg10,
  Highest_Educ_Level = educ,
  Happiness = happy,
)

gss2014_cleaned <- gss2014_cleaned |> rename(
  Occupational_Prestige_Pct = prestg10,
  Highest_Educ_Level = educ,
  Happiness = happy,
)

gss2016_cleaned <- gss2016_cleaned |> rename(
  Occupational_Prestige_Pct = prestg10,
  Highest_Educ_Level = educ,
  Happiness = happy,
)

gss2018_cleaned <- gss2018_cleaned |> rename(
  Occupational_Prestige_Pct = prestg10,
  Highest_Educ_Level = educ,
  Happiness = happy,
)

gss2021_cleaned <- gss2021_cleaned |> rename(
  Occupational_Prestige_Pct = prestg10,
  Highest_Educ_Level = educ,
  Happiness = happy,
)

### Now to change the values of these columns so they are readable without the codebook ###

## Change the Highest_Educ_Level into a character column to make the conversions##
gss2000_cleaned$Highest_Educ_Level <- as.character(gss2000_cleaned$Highest_Educ_Level)
gss2002_cleaned$Highest_Educ_Level <- as.character(gss2002_cleaned$Highest_Educ_Level)
gss2004_cleaned$Highest_Educ_Level <- as.character(gss2004_cleaned$Highest_Educ_Level)
gss2006_cleaned$Highest_Educ_Level <- as.character(gss2006_cleaned$Highest_Educ_Level)
gss2008_cleaned$Highest_Educ_Level <- as.character(gss2008_cleaned$Highest_Educ_Level)
gss2010_cleaned$Highest_Educ_Level <- as.character(gss2010_cleaned$Highest_Educ_Level)
gss2012_cleaned$Highest_Educ_Level <- as.character(gss2012_cleaned$Highest_Educ_Level)
gss2014_cleaned$Highest_Educ_Level <- as.character(gss2014_cleaned$Highest_Educ_Level)
gss2016_cleaned$Highest_Educ_Level <- as.character(gss2016_cleaned$Highest_Educ_Level)
gss2018_cleaned$Highest_Educ_Level <- as.character(gss2018_cleaned$Highest_Educ_Level)
gss2021_cleaned$Highest_Educ_Level <- as.character(gss2021_cleaned$Highest_Educ_Level)

## Then rename the values based on education level ##
gss2000_cleaned <- gss2000_cleaned |> mutate(
  Highest_Educ_Level =
    recode(
      Highest_Educ_Level,
      "0" = "No School",
      "1" = "Grade 1",
      "2" = "Grade 2",
      "3" = "Grade 3",
      "4" = "Grade 4",
      "5" = "Grade 5",
      "6" = "Grade 6",
      "7" = "Grade 7",
      "8" = "Grade 8",
      "9" = "Grade 9",
      "10" = "Grade 10",
      "11" = "Grade 11",
      "12" = "Grade 12",
      "13" = "College 1YR",
      "14" = "College 2YR",
      "15" = "College 3YR",
      "16" = "College 4YR",
      "17" = "College 5YR",
      "18" = "College 6YR",
      "19" = "College 7YR",
      "20" = "College 8YR",
    )
)

gss2002_cleaned <- gss2002_cleaned |> mutate(
  Highest_Educ_Level =
    recode(
      Highest_Educ_Level,
      "0" = "No School",
      "1" = "Grade 1",
      "2" = "Grade 2",
      "3" = "Grade 3",
      "4" = "Grade 4",
      "5" = "Grade 5",
      "6" = "Grade 6",
      "7" = "Grade 7",
      "8" = "Grade 8",
      "9" = "Grade 9",
      "10" = "Grade 10",
      "11" = "Grade 11",
      "12" = "Grade 12",
      "13" = "College 1YR",
      "14" = "College 2YR",
      "15" = "College 3YR",
      "16" = "College 4YR",
      "17" = "College 5YR",
      "18" = "College 6YR",
      "19" = "College 7YR",
      "20" = "College 8YR",
    )
)

gss2004_cleaned <- gss2004_cleaned |> mutate(
  Highest_Educ_Level =
    recode(
      Highest_Educ_Level,
      "0" = "No School",
      "1" = "Grade 1",
      "2" = "Grade 2",
      "3" = "Grade 3",
      "4" = "Grade 4",
      "5" = "Grade 5",
      "6" = "Grade 6",
      "7" = "Grade 7",
      "8" = "Grade 8",
      "9" = "Grade 9",
      "10" = "Grade 10",
      "11" = "Grade 11",
      "12" = "Grade 12",
      "13" = "College 1YR",
      "14" = "College 2YR",
      "15" = "College 3YR",
      "16" = "College 4YR",
      "17" = "College 5YR",
      "18" = "College 6YR",
      "19" = "College 7YR",
      "20" = "College 8YR",
    )
)

gss2006_cleaned <- gss2006_cleaned |> mutate(
  Highest_Educ_Level =
    recode(
      Highest_Educ_Level,
      "0" = "No School",
      "1" = "Grade 1",
      "2" = "Grade 2",
      "3" = "Grade 3",
      "4" = "Grade 4",
      "5" = "Grade 5",
      "6" = "Grade 6",
      "7" = "Grade 7",
      "8" = "Grade 8",
      "9" = "Grade 9",
      "10" = "Grade 10",
      "11" = "Grade 11",
      "12" = "Grade 12",
      "13" = "College 1YR",
      "14" = "College 2YR",
      "15" = "College 3YR",
      "16" = "College 4YR",
      "17" = "College 5YR",
      "18" = "College 6YR",
      "19" = "College 7YR",
      "20" = "College 8YR",
    )
)

gss2008_cleaned <- gss2008_cleaned |> mutate(
  Highest_Educ_Level =
    recode(
      Highest_Educ_Level,
      "0" = "No School",
      "1" = "Grade 1",
      "2" = "Grade 2",
      "3" = "Grade 3",
      "4" = "Grade 4",
      "5" = "Grade 5",
      "6" = "Grade 6",
      "7" = "Grade 7",
      "8" = "Grade 8",
      "9" = "Grade 9",
      "10" = "Grade 10",
      "11" = "Grade 11",
      "12" = "Grade 12",
      "13" = "College 1YR",
      "14" = "College 2YR",
      "15" = "College 3YR",
      "16" = "College 4YR",
      "17" = "College 5YR",
      "18" = "College 6YR",
      "19" = "College 7YR",
      "20" = "College 8YR",
    )
)

gss2010_cleaned <- gss2010_cleaned |> mutate(
  Highest_Educ_Level =
    recode(
      Highest_Educ_Level,
      "0" = "No School",
      "1" = "Grade 1",
      "2" = "Grade 2",
      "3" = "Grade 3",
      "4" = "Grade 4",
      "5" = "Grade 5",
      "6" = "Grade 6",
      "7" = "Grade 7",
      "8" = "Grade 8",
      "9" = "Grade 9",
      "10" = "Grade 10",
      "11" = "Grade 11",
      "12" = "Grade 12",
      "13" = "College 1YR",
      "14" = "College 2YR",
      "15" = "College 3YR",
      "16" = "College 4YR",
      "17" = "College 5YR",
      "18" = "College 6YR",
      "19" = "College 7YR",
      "20" = "College 8YR",
    )
)

gss2012_cleaned <- gss2012_cleaned |> mutate(
  Highest_Educ_Level =
    recode(
      Highest_Educ_Level,
      "0" = "No School",
      "1" = "Grade 1",
      "2" = "Grade 2",
      "3" = "Grade 3",
      "4" = "Grade 4",
      "5" = "Grade 5",
      "6" = "Grade 6",
      "7" = "Grade 7",
      "8" = "Grade 8",
      "9" = "Grade 9",
      "10" = "Grade 10",
      "11" = "Grade 11",
      "12" = "Grade 12",
      "13" = "College 1YR",
      "14" = "College 2YR",
      "15" = "College 3YR",
      "16" = "College 4YR",
      "17" = "College 5YR",
      "18" = "College 6YR",
      "19" = "College 7YR",
      "20" = "College 8YR",
    )
)

gss2014_cleaned <- gss2014_cleaned |> mutate(
  Highest_Educ_Level =
    recode(
      Highest_Educ_Level,
      "0" = "No School",
      "1" = "Grade 1",
      "2" = "Grade 2",
      "3" = "Grade 3",
      "4" = "Grade 4",
      "5" = "Grade 5",
      "6" = "Grade 6",
      "7" = "Grade 7",
      "8" = "Grade 8",
      "9" = "Grade 9",
      "10" = "Grade 10",
      "11" = "Grade 11",
      "12" = "Grade 12",
      "13" = "College 1YR",
      "14" = "College 2YR",
      "15" = "College 3YR",
      "16" = "College 4YR",
      "17" = "College 5YR",
      "18" = "College 6YR",
      "19" = "College 7YR",
      "20" = "College 8YR",
    )
)

gss2016_cleaned <- gss2016_cleaned |> mutate(
  Highest_Educ_Level =
    recode(
      Highest_Educ_Level,
      "0" = "No School",
      "1" = "Grade 1",
      "2" = "Grade 2",
      "3" = "Grade 3",
      "4" = "Grade 4",
      "5" = "Grade 5",
      "6" = "Grade 6",
      "7" = "Grade 7",
      "8" = "Grade 8",
      "9" = "Grade 9",
      "10" = "Grade 10",
      "11" = "Grade 11",
      "12" = "Grade 12",
      "13" = "College 1YR",
      "14" = "College 2YR",
      "15" = "College 3YR",
      "16" = "College 4YR",
      "17" = "College 5YR",
      "18" = "College 6YR",
      "19" = "College 7YR",
      "20" = "College 8YR",
    )
)

gss2018_cleaned <- gss2018_cleaned |> mutate(
  Highest_Educ_Level =
    recode(
      Highest_Educ_Level,
      "0" = "No School",
      "1" = "Grade 1",
      "2" = "Grade 2",
      "3" = "Grade 3",
      "4" = "Grade 4",
      "5" = "Grade 5",
      "6" = "Grade 6",
      "7" = "Grade 7",
      "8" = "Grade 8",
      "9" = "Grade 9",
      "10" = "Grade 10",
      "11" = "Grade 11",
      "12" = "Grade 12",
      "13" = "College 1YR",
      "14" = "College 2YR",
      "15" = "College 3YR",
      "16" = "College 4YR",
      "17" = "College 5YR",
      "18" = "College 6YR",
      "19" = "College 7YR",
      "20" = "College 8YR",
    )
)

gss2021_cleaned <- gss2021_cleaned |> mutate(
  Highest_Educ_Level =
    recode(
      Highest_Educ_Level,
      "0" = "No School",
      "1" = "Grade 1",
      "2" = "Grade 2",
      "3" = "Grade 3",
      "4" = "Grade 4",
      "5" = "Grade 5",
      "6" = "Grade 6",
      "7" = "Grade 7",
      "8" = "Grade 8",
      "9" = "Grade 9",
      "10" = "Grade 10",
      "11" = "Grade 11",
      "12" = "Grade 12",
      "13" = "College 1YR",
      "14" = "College 2YR",
      "15" = "College 3YR",
      "16" = "College 4YR",
      "17" = "College 5YR",
      "18" = "College 6YR",
      "19" = "College 7YR",
      "20" = "College 8YR",
    )
)

### Next, change the Happiness column values so they are easy to understand ###

## First step is to change the happiness column into a character one ##
gss2000_cleaned$Happiness <- as.character(gss2000_cleaned$Happiness)
gss2002_cleaned$Happiness <- as.character(gss2002_cleaned$Happiness)
gss2004_cleaned$Happiness <- as.character(gss2004_cleaned$Happiness)
gss2006_cleaned$Happiness <- as.character(gss2006_cleaned$Happiness)
gss2008_cleaned$Happiness <- as.character(gss2008_cleaned$Happiness)
gss2010_cleaned$Happiness <- as.character(gss2010_cleaned$Happiness)
gss2012_cleaned$Happiness <- as.character(gss2012_cleaned$Happiness)
gss2014_cleaned$Happiness <- as.character(gss2014_cleaned$Happiness)
gss2016_cleaned$Happiness <- as.character(gss2016_cleaned$Happiness)
gss2018_cleaned$Happiness <- as.character(gss2018_cleaned$Happiness)
gss2021_cleaned$Happiness <- as.character(gss2021_cleaned$Happiness)

## Next, change the values based on the code book ##

gss2000_cleaned <- gss2000_cleaned |> mutate(
  Happiness =
    recode(
      Happiness,
      "1" = "Very Happy",
      "2" = "Pretty Happy",
      "3" = "Not Too Happy"
    )
)

gss2002_cleaned <- gss2002_cleaned |> mutate(
  Happiness =
    recode(
      Happiness,
      "1" = "Very Happy",
      "2" = "Pretty Happy",
      "3" = "Not Too Happy"
    )
)

gss2004_cleaned <- gss2004_cleaned |> mutate(
  Happiness =
    recode(
      Happiness,
      "1" = "Very Happy",
      "2" = "Pretty Happy",
      "3" = "Not Too Happy"
    )
)

gss2006_cleaned <- gss2006_cleaned |> mutate(
  Happiness =
    recode(
      Happiness,
      "1" = "Very Happy",
      "2" = "Pretty Happy",
      "3" = "Not Too Happy"
    )
)

gss2008_cleaned <- gss2008_cleaned |> mutate(
  Happiness =
    recode(
      Happiness,
      "1" = "Very Happy",
      "2" = "Pretty Happy",
      "3" = "Not Too Happy"
    )
)

gss2010_cleaned <- gss2010_cleaned |> mutate(
  Happiness =
    recode(
      Happiness,
      "1" = "Very Happy",
      "2" = "Pretty Happy",
      "3" = "Not Too Happy"
    )
)

gss2012_cleaned <- gss2012_cleaned |> mutate(
  Happiness =
    recode(
      Happiness,
      "1" = "Very Happy",
      "2" = "Pretty Happy",
      "3" = "Not Too Happy"
    )
)

gss2014_cleaned <- gss2014_cleaned |> mutate(
  Happiness =
    recode(
      Happiness,
      "1" = "Very Happy",
      "2" = "Pretty Happy",
      "3" = "Not Too Happy"
    )
)

gss2016_cleaned <- gss2016_cleaned |> mutate(
  Happiness =
    recode(
      Happiness,
      "1" = "Very Happy",
      "2" = "Pretty Happy",
      "3" = "Not Too Happy"
    )
)

gss2018_cleaned <- gss2018_cleaned |> mutate(
  Happiness =
    recode(
      Happiness,
      "1" = "Very Happy",
      "2" = "Pretty Happy",
      "3" = "Not Too Happy"
    )
)

gss2021_cleaned <- gss2021_cleaned |> mutate(
  Happiness =
    recode(
      Happiness,
      "1" = "Very Happy",
      "2" = "Pretty Happy",
      "3" = "Not Too Happy"
    )
)

### We want only females in this cleaned data set ###

gss2000_cleaned <- gss2000_cleaned |> filter(sex ==  2)
gss2002_cleaned <- gss2002_cleaned |> filter(sex ==  2)
gss2004_cleaned <- gss2004_cleaned |> filter(sex ==  2)
gss2006_cleaned <- gss2006_cleaned |> filter(sex ==  2)
gss2008_cleaned <- gss2008_cleaned |> filter(sex ==  2)
gss2010_cleaned <- gss2010_cleaned |> filter(sex ==  2)
gss2012_cleaned <- gss2012_cleaned |> filter(sex ==  2)
gss2014_cleaned <- gss2014_cleaned |> filter(sex ==  2)
gss2016_cleaned <- gss2016_cleaned |> filter(sex ==  2)
gss2018_cleaned <- gss2018_cleaned |> filter(sex ==  2)
gss2021_cleaned <- gss2021_cleaned |> filter(sex ==  2)

### We want to drop the spwrksta column now since it is no longer relevant ###

gss2000_cleaned <- gss2000_cleaned |> select(-c(spwrksta))
gss2002_cleaned <- gss2002_cleaned |> select(-c(spwrksta))
gss2004_cleaned <- gss2004_cleaned |> select(-c(spwrksta))
gss2006_cleaned <- gss2006_cleaned |> select(-c(spwrksta))
gss2008_cleaned <- gss2008_cleaned |> select(-c(spwrksta))
gss2010_cleaned <- gss2010_cleaned |> select(-c(spwrksta))
gss2012_cleaned <- gss2012_cleaned |> select(-c(spwrksta))
gss2014_cleaned <- gss2014_cleaned |> select(-c(spwrksta))
gss2016_cleaned <- gss2016_cleaned |> select(-c(spwrksta))
gss2018_cleaned <- gss2018_cleaned |> select(-c(spwrksta))
gss2021_cleaned <- gss2021_cleaned |> select(-c(spwrksta))


#### Save data ####
write_csv(gss2000_cleaned, here::here("outputs/data/gss2000_cleaned.csv"))
write_csv(gss2002_cleaned, here::here("outputs/data/gss2002_cleaned.csv"))
write_csv(gss2004_cleaned, here::here("outputs/data/gss2004_cleaned.csv"))
write_csv(gss2006_cleaned, here::here("outputs/data/gss2006_cleaned.csv"))
write_csv(gss2008_cleaned, here::here("outputs/data/gss2008_cleaned.csv"))
write_csv(gss2010_cleaned, here::here("outputs/data/gss2010_cleaned.csv"))
write_csv(gss2012_cleaned, here::here("outputs/data/gss2012_cleaned.csv"))
write_csv(gss2014_cleaned, here::here("outputs/data/gss2014_cleaned.csv"))
write_csv(gss2016_cleaned, here::here("outputs/data/gss2016_cleaned.csv"))
write_csv(gss2018_cleaned, here::here("outputs/data/gss2018_cleaned.csv"))
write_csv(gss2021_cleaned, here::here("outputs/data/gss2021_cleaned.csv"))


