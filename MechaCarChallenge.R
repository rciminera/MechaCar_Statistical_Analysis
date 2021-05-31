#Deliverable 1: Linear Regression to Predict MPG
# Load dplyr
library(dplyr)

# Read MechaCar csv into dataframe
MechaCar_mpg = read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Multi-variable Linear Regression to predict mpg
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)) #generate multiple linear regression model


#Deliverable 2: 

# Read MechaCar csv into dataframe
suspension_coil = read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Create a total_summary dataframe using the summarize() function to get the 
# mean, median, variance, and standard deviation of the suspension coil’s PSI column.

total_summary <- suspension_coil %>% 
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Write an RScript that creates a lot_summary dataframe using the group_by() and the 
# summarize() functions to group each manufacturing lot by the mean, median, variance, 
# and standard deviation of the suspension coil’s PSI column.

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

?t.test()
# t-test that compares all manufacturing lots against mean PSI of the population
# three t-tests that compare each manufacturing lot against mean PSI of the population

sample_suspension_coil <- suspension_coil %>% sample_n(50) #generate 50 randomly sampled data points
lot1_suspension_coil <- subset(suspension_coil, Manufacturing_Lot == "Lot1") 
lot2_suspension_coil <- subset(suspension_coil, Manufacturing_Lot == "Lot2") 
lot3_suspension_coil <- subset(suspension_coil, Manufacturing_Lot == "Lot3") 


t.test(sample_suspension_coil$PSI, mu=mean(suspension_coil$PSI)) #compare sample versus population means
t.test(lot1_suspension_coil$PSI, mu=mean(suspension_coil$PSI)) #compare Lot1 versus population means
t.test(lot2_suspension_coil$PSI, mu=mean(suspension_coil$PSI)) #compare Lot2 versus population means
t.test(lot3_suspension_coil$PSI, mu=mean(suspension_coil$PSI)) #compare Lot3 versus population means

