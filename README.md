# MechaCar_Statistical_Analysis

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress.  AutosRUs’ upper management has called on the data analytics team to review the production data for insights that may help the manufacturing team.

Using the R Studio open source statistical tool, the goals of the analysis are as follow:

1. Linear Regression to Predict MPG: 
2. Summary Statistics on Suspension Coils: 
3. T-Test on Suspension Coils: determine if the manufacturing lots are statistically different from the mean population
4. Design a Study Comparing the MechaCar to the Competition


### 1. Linear Regression to Predict MPG

A multiple linear regression analysis was performed to identify which variables in the dataset predict the mpg of MechaCar prototypes.

[githublogo](mpg.lm.png)

The results of the linear regression suggest that vehicle_weight, spoiler_angle, and AWD provide a non-random amount of variance to the mpg values and are therefore predictors of mpg values.

The slope of the linear model is not equal to zero with 
Is the slope of the linear model considered to be zero? Why or why not?
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?



### 2. Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

The current manufacturing data indicates that meet this design specification for all manufacturing lots in total meet the 100 pounds per square inch specification with a variance of 62.29356.

<img src="https://github.com/rciminera/MechaCar_Statistical_Analysis/blob/main/Screen_Shots/total_summary.png" width = "800" >


However, manufactuing lot #3 does not meet this spec with a variance of 170.2861224

[githublogo](lot_summary.png)


### 3. T-Tests on Suspension Coils

Briefly summarize your interpretation and findings for the t-test results. 

Include screenshots of the t-test to support your summary.

### 4. Study Design: MechaCar vs Competition.
Short description of a statistical study that can quantify how the MechaCar performs against the competition. 

In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

In your description, address the following questions:
-  What metric or metrics are you going to test?
- What is the null hypothesis or alternative hypothesis?
- What statistical test would you use to test the hypothesis? And why?
- What data is needed to run the statistical test?
