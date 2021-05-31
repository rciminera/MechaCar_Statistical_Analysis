#Deliverable 1: Linear Regression to Predict MPG
# Load dplyr
library(dplyr)

# Read MechaCar csv into dataframe
MechaCar_mpg = read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Multi-variable Linear Regression to predict mpg
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)) #generate multiple linear regression model


#Deliverable 2: Create Visualizations for the Trip Analysis

# Read MechaCar csv into dataframe
suspension_coil = read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Create a total_summary dataframe using the summarize() function to get the 
# mean, median, variance, and standard deviation of the suspension coil’s PSI column.

Total_summary <- suspension_coil %>% 
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Write an RScript that creates a lot_summary dataframe using the group_by() and the 
# summarize() functions to group each manufacturing lot by the mean, median, variance, 
# and standard deviation of the suspension coil’s PSI column.

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), .groups = 'keep')


