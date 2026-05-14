# Investigating Gender and Marital Status Associations with Mental Wellbeing

## Overview
This project examines whether mental wellbeing satisfaction differs by gender and whether it is associated with marital status, using data from the 2011 ONS Opinions Survey. The analysis uses descriptive statistics, visualisations, a t-test, and chi-squared tests to explore patterns in reported satisfaction levels.

## Research Questions
1. Do men or women report higher levels of satisfaction with their mental wellbeing?
2. Is there an association between mental wellbeing satisfaction and marital status?

## Dataset
The dataset comes from the 2011 ONS Opinions Survey and includes responses from 1,124 individuals. It contains variables related to gender, marital status, and satisfaction with mental wellbeing.

## Data Preparation
The data was imported into R using the `foreign` package. Several preparation steps were carried out before analysis:
- the mental wellbeing variable (`MCZ_5c`) was recoded from a 1–11 scale to a 0–10 scale,
- refusal responses were converted to `NA`,
- a binary variable (`satis.well`) was created to classify respondents as either high satisfaction or low satisfaction,
- unused levels in the marital status variable (`marstat3r`) were removed using `droplevels()`.

## Descriptive Analysis
The average mental wellbeing satisfaction score was 8.19, with a median of 9, suggesting that overall satisfaction levels were relatively high. After removing missing values, the sample included 1,115 respondents, with 516 males and 608 females. In terms of marital status, respondents were grouped into married/cohabiting, single, and widowed/divorced/separated categories.

The descriptive results showed that males had a slightly higher mean satisfaction score than females, but the difference was very small. The boxplot also suggested that married or cohabiting respondents tended to report higher mental wellbeing satisfaction than single or divorced respondents.

## Hypothesis Testing

### Gender and Mental Wellbeing
An independent samples t-test was conducted to compare mental wellbeing satisfaction between men and women. The result was not statistically significant, with no evidence of a meaningful difference in average satisfaction between the two groups.

A chi-squared test was also used to test whether gender was associated with reporting high satisfaction. This test was also not significant, suggesting that men and women were similarly likely to report high mental wellbeing satisfaction.

### Marital Status and Mental Wellbeing
A chi-squared test was used to assess whether mental wellbeing satisfaction was associated with marital status. This test was statistically significant, indicating that satisfaction levels were not evenly distributed across marital status groups.

Respondents who were married or cohabiting were more likely to report high mental wellbeing satisfaction than single respondents or those who were widowed, divorced, or separated.

## Key Findings
- Gender was not significantly associated with mental wellbeing satisfaction.
- Marital status was significantly associated with mental wellbeing satisfaction.
- Married or cohabiting respondents reported the highest levels of satisfaction.
- Overall mental wellbeing satisfaction in the sample was relatively high.

## Limitations
Some respondents refused to answer certain questions, which reduced the usable sample size after missing values were removed. In addition, self-reported wellbeing measures may be affected by response bias, as individuals may not always report their feelings completely accurately.

## Conclusion
This analysis found no statistically significant difference in mental wellbeing satisfaction between men and women. However, marital status was significantly associated with wellbeing satisfaction, with married or cohabiting respondents showing the highest levels of satisfaction. Overall, the findings suggest that relationship status may be more closely linked to reported mental wellbeing than gender in this dataset.

