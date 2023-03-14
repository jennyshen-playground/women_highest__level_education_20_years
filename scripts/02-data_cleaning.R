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

### Add years to each cleaned dataset ###
year_2000 <- c(rep("2000", 1588))
gss2000_cleaned <- cbind(gss2000_cleaned, year_2000)
gss2000_cleaned <- gss2000_cleaned |> rename(
  Year = year_2000
)

year_2002 <- c(rep("2002", 1537))
gss2002_cleaned <- cbind(gss2002_cleaned, year_2002)
gss2002_cleaned <- gss2002_cleaned |> rename(
  Year = year_2002
)

year_2004 <- c(rep("2004", 1532))
gss2004_cleaned <- cbind(gss2004_cleaned, year_2004)
gss2004_cleaned <- gss2004_cleaned |> rename(
  Year = year_2004
)

year_2006 <- c(rep("2006", 2507))
gss2006_cleaned <- cbind(gss2006_cleaned, year_2006)
gss2006_cleaned <- gss2006_cleaned |> rename(
  Year = year_2006
)

year_2008 <- c(rep("2008", 1093))
gss2008_cleaned <- cbind(gss2008_cleaned, year_2008)
gss2008_cleaned <- gss2008_cleaned |> rename(
  Year = year_2008
)

year_2010 <- c(rep("2010", 1153))
gss2010_cleaned <- cbind(gss2010_cleaned, year_2010)
gss2010_cleaned <- gss2010_cleaned |> rename(
  Year = year_2010
)

year_2012 <- c(rep("2012", 1089))
gss2012_cleaned <- cbind(gss2012_cleaned, year_2012)
gss2012_cleaned <- gss2012_cleaned |> rename(
  Year = year_2012
)

year_2014 <- c(rep("2014", 1397))
gss2014_cleaned <- cbind(gss2014_cleaned, year_2014)
gss2014_cleaned <- gss2014_cleaned |> rename(
  Year = year_2014
)

year_2016 <- c(rep("2016", 1591))
gss2016_cleaned <- cbind(gss2016_cleaned, year_2016)
gss2016_cleaned <- gss2016_cleaned |> rename(
  Year = year_2016
)

year_2018 <- c(rep("2018", 1296))
gss2018_cleaned <- cbind(gss2018_cleaned, year_2018)
gss2018_cleaned <- gss2018_cleaned |> rename(
  Year = year_2018
)

year_2021 <- c(rep("2021", 2204))
gss2021_cleaned <- cbind(gss2021_cleaned, year_2021)
gss2021_cleaned <- gss2021_cleaned |> rename(
  Year = year_2021
)

## Create a master merged GSS data frame ##
merged_gss <- rbind(gss2000_cleaned, gss2002_cleaned)
merged_gss <- rbind(merged_gss, gss2004_cleaned)
merged_gss <- rbind(merged_gss, gss2006_cleaned)
merged_gss <- rbind(merged_gss, gss2008_cleaned)
merged_gss <- rbind(merged_gss, gss2010_cleaned)
merged_gss <- rbind(merged_gss, gss2012_cleaned)
merged_gss <- rbind(merged_gss, gss2014_cleaned)
merged_gss <- rbind(merged_gss, gss2016_cleaned)
merged_gss <- rbind(merged_gss, gss2018_cleaned)
merged_gss <- rbind(merged_gss, gss2021_cleaned)

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
write_csv(merged_gss, here::here("outputs/data/merged_gss.csv"))


