# Data downloaded Sept. 23 from the Missouri Dept. of Conservation

library(tidyverse)
library(janitor)
library(lubridate)

wildfires <- read_csv("data/mdc-wildfire-reporting-2002-2021.csv")

## clean variable names

wildfires <- wildfires %>% clean_names()

############ Exploratory analysis ############

###### Integrity checks

### What is the exact date range of the data?

wildfires %>% summarise(range(discovered_date))

# This comes back as 01/01/2003 to 12/31/2020 but I know there is data going back to 2001 and as recent as 2021.

### How many different causes are there?

wildfires %>% count(cause)

# 14 causes, including 8,064 rows for miscellaneous, 20,455 for unknown, and 1,658 not reported.

### How many different counties?

wildfires %>% count(county) %>%
  arrange(desc(n))

# 124 counties, more counties than there are in Missouri. I will need to explore this more. Camden has the most reports at 3,516, almost 
# 1,000 more than the second highest (Newton)

### How many different stations?

wildfires %>% count(station) %>%
  arrange(desc(n))

# 745 stations, but this column looks dirty. Some are in all caps and some are normal case. 

### Counting the years How many rows for each year, which year had the most reports?
### Making a new column that has just the year

wildfires <- wildfires %>% mutate(year = substr(discovered_date, 7, 10), .after = "discovered_date")

wildfires %>% count(year) %>%
  arrange(desc(n))

## 2012 had the most reports between 2002 and 2021 at 6,595 reports.

### Are there NAs in the acres burned column?

wildfires %>% filter(is.na(acres_burned)) %>%
  summarise(count=n())

### Yes, 1,393 rows. Almost exactly 2% of the data. 

### What is the range for acres burned?

wildfires %>% filter(!is.na(acres_burned)) %>% 
  summarise(range = range(acres_burned))

### -1 to 10142. Negative one? What's up with that

wildfires %>% filter(acres_burned == -1)

### Six columns say -1 acres burned. All are from the same station in Jackson County on various dates in 2004.

















