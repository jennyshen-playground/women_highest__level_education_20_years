#### Preamble ####
# Purpose: Reads the GSS survey files and saves it locally
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

#### Download data ####

##Data was downloaded from https://gss.norc.org/get-the-data/stata, from the individual data sets.
##Data sets from years 2000 - 2021 were downloaded manually.
##Downloading cumulative data requires an account to be created.

#### Save data ####
gss2000_data <- read_dta(here::here("inputs/data/GSS2000.dta"))
gss2002_data <- read_dta(here::here("inputs/data/GSS2002.dta"))
gss2004_data <- read_dta(here::here("inputs/data/GSS2004.dta"))
gss2006_data <- read_dta(here::here("inputs/data/GSS2006.dta"))
gss2008_data <- read_dta(here::here("inputs/data/GSS2008.dta"))
gss2010_data <- read_dta(here::here("inputs/data/GSS2010.dta"))
gss2012_data <- read_dta(here::here("inputs/data/GSS2012.dta"))
gss2014_data <- read_dta(here::here("inputs/data/GSS2014.dta"))
gss2016_data <- read_dta(here::here("inputs/data/GSS2016.dta"))
gss2018_data <- read_dta(here::here("inputs/data/GSS2018.dta"))
gss2021_data <- read_dta(here::here("inputs/data/GSS2021.dta"))
         