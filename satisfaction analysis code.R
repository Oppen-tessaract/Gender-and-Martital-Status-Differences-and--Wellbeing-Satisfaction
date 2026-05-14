
#PART 1
setwd("C:/Users/faade/OneDrive/Documents/Social data/Rstart uni/semester 2/exam2")
library(tidyverse)

#loading in data
library("foreign")
wellbeing <- read.dta("wellbeing.dta")
wellbeing$marstat3r <- droplevels(wellbeing$marstat3r)

#data set characteristics
summary(wellbeing$MCZ_5c) 

class(wellbeing$MCZ_5c) 

#checking for NA and converting missing values into NAs
wellbeing$MCZ_5c <- ifelse(wellbeing$MCZ_5c == "Refusal", NA, wellbeing$MCZ_5c )


wellbeing <- wellbeing %>%
  mutate(MCZ_5c = MCZ_5c - 1)
  
  table(wellbeing$MCZ_5c)

#
wellbeing <- wellbeing %>%
  mutate(satis.well = ifelse(MCZ_5c > 7, 1, 0))



#summary data
table(wellbeing$rsex)
table(wellbeing$marstat3r)
nrow(wellbeing)
ncol(wellbeing)
#calcukating mean of mental wellbeing satisfaction levels by gender
library(dplyr)
wellbeing %>%
  group_by(rsex)%>%
  summarise(
    meanwell = mean(MCZ_5c, na.rm = TRUE)
  )

#bar chart of satisfaction levels by gender

wellbeing %>%
  drop_na(MCZ_5c, rsex) %>%
  ggplot(aes(x=factor(MCZ_5c), fill = rsex)) +
  geom_bar(position = "dodge")+
  labs(x = "Satisfaction Levels", y = "Number of Respondents", caption = "Source : 2011 ONS Opinion Survey", title = "Mental Wellbeing Satisfaction levels By Gender")

#Boxplot of satisfaction levels by marital status
wellbeing%>%
  drop_na(MCZ_5c, marstat3r)%>%
  ggplot(aes(x=marstat3r, y=MCZ_5c)) +
  geom_boxplot(aes(fill = marstat3r))+
  theme_linedraw()+
  theme(legend.position = "none") +
  labs(x = "Marital Status", y = "Mental wellbeing Satisfaction levels", caption = "Source : 2011 ONS Opinion Survey", title = "Representation of Mental wellbeing Satisfaction levels by Marital Status")

PART 4
#
no_NA_wellbeing <- wellbeing %>%
  drop_na(MCZ_5c) 
t.test(MCZ_5c ~ rsex, data = no_NA_wellbeing)


#dropping NA
No_NA_satis_wellbeing_ <- wellbeing %>%
  drop_na(satis.well)
gender_satis_table <- table(No_NA_satis_wellbeing_$rsex, No_NA_satis_wellbeing_$satis.well)
chisq.test(gender_satis_table)

drop_na_wellbeing <- wellbeing %>% drop_na(satis.well, marstat3r)
marital <- table(drop_na_wellbeing$marstat3r, drop_na_wellbeing$satis.well)

#
chisq.test(marital)

