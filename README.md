# MechaCar_Statistical_Analysis
by Bob Ciminera

###  Overview

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress.  AutosRUs’ upper management has called on the data analytics team to review the production data for insights that may help the manufacturing team.

Using the R Studio open source statistical tool, the goals of the analysis are as follow:

1. Linear Regression to Predict MPG
2. Summary Statistics on Suspension Coils
3. T-Test on Suspension Coils
4. Design a Study Comparing the MechaCar to the Competition

(This is the link to the RScript)[https://github.com/rciminera/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.R]



### 1. Linear Regression to Predict MPG

A multiple linear regression analysis was performed to identify which variables in the dataset predict the mpg of MechaCar prototypes.

<img src="https://github.com/rciminera/MechaCar_Statistical_Analysis/blob/main/Screen_Shots/mpg_lm.png" width = "500" >

The results of the linear regression suggest that the values of Pr((>ltl) represent the probability that the coefficients for vehicle_weight, spoiler_angle, and AWD provide a non-random amount of variance to the mpg values. These, therefore have a significant impact of mpg values whereas the other variables do not.

From the linear regression model, the r-squared value is 0.7149, which means that roughly 71% of the variablilty of our dependent variable (miles per gallon) is explained using this linear model. C

In addition, the p-value of our linear regression analysis is 5.35 x 10^-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject the null hypothesis that the slope of our linear model is not zero.

Based on the above this linear model effectively predicts mpg of MechaCar prototypes effectively.  In summary, the high R squared values and the significant impact of vehicle_weight, spoiler_angle and AWD on mpg make this an effective model.  By scaling or transforming these variables, this model can become even more effective.


### 2. Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

The current manufacturing data indicates that the suspension coils meet this design specification in total across all manufacturing lots with a variance of 62.29356.

<img src="https://github.com/rciminera/MechaCar_Statistical_Analysis/blob/main/Screen_Shots/total_summary.png" width = "500" >


However, with a variance of 170.2861224, manufacturing lot #3 does not meet this spec.

<img src="https://github.com/rciminera/MechaCar_Statistical_Analysis/blob/main/Screen_Shots/lot_summary.png" width = "800" >


### 3. T-Tests on Suspension Coils

Briefly summarize your interpretation and findings for the t-test results. 

Include screenshots of the t-test to support your summary.

An RScript is written for t-test that compares all manufacturing lots against mean PSI of the population (5 pt)
An RScript is written for three t-tests that compare each manufacturing lot against mean PSI of the population (10 pt)
There is a summary of the t-test results across all manufacturing lots and for each lot (5 pt)


<img src="https://github.com/rciminera/MechaCar_Statistical_Analysis/blob/main/Screen_Shots/ttest.png" width = "800" >





### 4. Study Design: MechaCar vs Competition.
Short description of a statistical study that can quantify how the MechaCar performs against the competition. 

In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

In your description, address the following questions:
-  What metric or metrics are you going to test?
- What is the null hypothesis or alternative hypothesis?
- What statistical test would you use to test the hypothesis? And why?
- What data is needed to run the statistical test?
