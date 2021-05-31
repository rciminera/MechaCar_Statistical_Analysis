# MechaCar_Statistical_Analysis
by Bob Ciminera

###  Overview

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress.  AutosRUs’ upper management has called on the data analytics team to review the production data for insights that may help the manufacturing team.

In addition, other areas were addressed such as fuel efficiency and design of a future statistical study.

Using the R Studio open source statistical tool, the goals of the analysis are as follow:

1. Linear Regression to Predict MPG
2. Summary Statistics on Suspension Coils
3. T-Test on Suspension Coils
4. Design a Study Comparing the MechaCar to the Competition

[This is the link to the RScript](https://github.com/rciminera/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.R)



### 1. Linear Regression to Predict MPG

A multiple linear regression analysis was performed to identify which variables in the dataset predict the mpg of MechaCar prototypes.

<img src="https://github.com/rciminera/MechaCar_Statistical_Analysis/blob/main/Screen_Shots/mpg_lm.png" width = "500" >

The results of the linear regression show that the values of Pr((>ltl) represent the probability that the coefficients for vehicle_weight, spoiler_angle, and AWD provide a non-random amount of variance to the mpg values. These, therefore have a significant impact of mpg values whereas the other variables do not.

From the linear regression model, the r-squared value is 0.7149, which means that 71% of the variabilty of our dependent variable (miles per gallon) can be explained using this linear model. 

In addition, the p-value of our linear regression analysis is 5.35 x 10^-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to that the slope of our linear model is not zero.

Based on the above, this linear model effectively predicts mpg of MechaCar prototypes.  The high R squared values and the significant impact of vehicle_weight, spoiler_angle and AWD on mpg make this an effective model.  By scaling or transforming these variables, this model can become even more effective.


### 2. Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

The current manufacturing data indicates that the suspension coils meet this design specification in total across all manufacturing lots with a variance of 62.29356.

<img src="https://github.com/rciminera/MechaCar_Statistical_Analysis/blob/main/Screen_Shots/total_summary.png" width = "500" >


However, with a variance of 170.2861224, manufacturing lot #3 does not meet this spec.

<img src="https://github.com/rciminera/MechaCar_Statistical_Analysis/blob/main/Screen_Shots/lot_summary.png" width = "800" >


### 3. T-Tests on Suspension Coils

T-Tests were run to determine the difference in the mean of PSI of the total population of suspension coils versus 4 subsets of the population: a random sample of 50, Lot1, Lot2, Lot3.

The p-values created from each test were compared to .05 percent to test the two Hypotheses below.

Null Hypothesis or H0 : There is no statistical difference between the observed sample mean and its presumed population mean.
Ha Hypothesis: There is a statistical difference between the observed sample mean and its presumed population mean.

<img src="https://github.com/rciminera/MechaCar_Statistical_Analysis/blob/main/Screen_Shots/ttest.png" width = "800" >


#### Suspension Coil Statistical Summary

In summary, the sample and Lot 3 showed no statistical difference between their means and the population mean thus proving the null hypothesis.  However, Lots 1 and 2 showed a significant statistical differences with p values well below .05, thus supporting the alternative hypothesis.

What is of concern is that while lot 3 was the only lot that met the null hypothesis, the variance of lot 3 was out of spec.

In order to maintain the quality of the MechaCar according to its specifications, the supplier of these coils should be put on notice to fix the quality issue and put corrective and preventative measures in place.  AutoRUs should also institute incoming inspection on suspension coils as they are received until supplier can prove that their process is producing consistently to specification.


### 4. Study Design: MechaCar vs Competition

In order to understand how MechaCar performs against the competition a statistical study could be conducted with critical metrics that would be of interest to a consumer.  A few examples of these metrics are: cost, fuel efficiency, horse power, maintenance cost, or safety rating.

For this study, the recommended variable of interest is mpg as a measure of mpg.

The Null Hypothesis is that the mpg for the competition is the same as that of the MechaCar.

The Alternative Hypothesis is that the mpg for the competition is significantly different than Mechacar.

In this study mpg be tested for each competitor with sample sizes of 50 for each.  Each car would be driven the same number of miles under the same highway and city driving conditions and fuel consumption would be carefully and accruately measured directly from the fuel tanks before and after each test to avoid bias introduced by fuel gauges.

To compare the statistical difference between the distribution means of mpg from each of these samples, the ANOVA test methodology will be used.   

An additional study is recommended to test the independent factors that might impact mpg.

In this study 6 variables would be tested for each competitor with sample sizes of 50 for each.  Each car would be driven the same number of miles under the same highway and city driving conditions and fuel consumption would be careful,y measured directly from the fuel tanks before and after each test to avoid bias introduced by fuel gauges.

These variables would include vehicle length, weight, ground clearance, spolier angle, AWD, and mpg.  Measurements would be taken for each of these across 50 samples.

The null hypothesis is that none of these variables has significance on mpg whereas the alternative hypothesis is that one or more of these variables does have significance.

A sample of 50 cars currently in production will be taken from each competitor with measurments taken for each of the variables.

 A multiple linear regression test will be conducted for the entire population of cars in the study. We already know that vehicle_weight, spoiler_angle and AWD were of signifcance in predicting mpg for the MechaCar. From the new study we can confirm whether these variables remain signficant.  We can also transform or scale these to fine tune the model and impact mpg according to the marketing department's mpg objective vs the competition.

