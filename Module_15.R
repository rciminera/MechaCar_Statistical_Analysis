# Read CSV Files
demo_table <- read.csv(file='demo.csv',check.names=F,stringsAsFactors = F)

# Read JSON File
demo_table2 <- fromJSON(txt='demo.json')

# Select data in R - Module 15.2.4

# Select data with Index
demo_table[3,"Year"]
demo_table$"Vehicle_Class"[2]

# Select data with logic
filter_table <- demo_table2[demo_table2$price > 10000,] 
#comma specifies the columns to select.

filter_table2 <- subset(demo_table2, price > 10000 & drive == 
  "4wd" & "clean" %in% title_status) #filter by price and drivetrain

filter_table3 <- demo_table2[("clean" %in% demo_table2$title_status)
        & (demo_table2$price > 10000) & (demo_table2$drive == "4wd"),]

# 15.2.5 Transform, Group, and Reshape Data Using the Tidyverse Package

# Mutate adds columns to a table with the %>% pipe function
demo_table <- demo_table %>% mutate(Mileage_per_Year=Total_Miles/(2020-Year),
          IsActive=TRUE)  #add columns to original data frame

# Statistics Summary Functions such as mean(), median(), sd(), min(), max(), and 
# n() (used to calculate the number of rows in each category).

# Summarize Function with Group_by
Summarize_demo <- demo_table2 %>% group_by(condition) %>% 
  summarize(Mean_Mileage=mean(odometer), .groups = 'keep') #create summary table
# .groups = "drop_last" drops the last grouping level (default)
# .groups = "drop" drops all grouping levels and returns a tibble
# .groups = "keep" preserves the grouping of the input
# .groups = "rowwise" turns each row into its own group

# Reshape Data using gather functions
demo_table3 <- read.csv('demo2.csv',check.names = F,stringsAsFactors = F)
long_table <- gather(demo_table3,key="Metric",value="Score",buying_price:popularity)

# Mod 15.3.1 ggplot
plt <- ggplot(mpg,aes(x=class)) #import dataset into ggplot2
plt + geom_bar() #plot a bar plot

mpg_summary <- mpg %>% group_by(manufacturer) %>% summarize(Vehicle_Count=n(), 
        .groups = 'keep') #create summary table
plt <- ggplot(mpg_summary,aes(x=manufacturer,y=Vehicle_Count)) #import dataset into ggplot2
plt + geom_col() #plot a bar plot

#Change axis title
plt + geom_col() + xlab("Manufacturing Company") + ylab("Number of Vehicles in Dataset") 
#plot bar plot with labels

# rotate x axis 45 degrees
plt + geom_col() + xlab("Manufacturing Company") + ylab("Number of Vehicles in Dataset") 
+ #plot a boxplot with labels
theme(axis.text.x=element_text(angle=45,hjust=1)) #rotate the x-axis label 45 degrees

# Build a line plot
mpg_summary <- subset(mpg,manufacturer=="toyota") %>% group_by(cyl) %>% 
  summarize(Mean_Hwy=mean(hwy), .groups = 'keep') #create summary table
plt <- ggplot(mpg_summary,aes(x=cyl,y=Mean_Hwy)) #import dataset into ggplot2

# Plot the Line
plt + geom_line()

# Adjust the tick values
plt + geom_line() + scale_x_discrete(limits=c(4,6,8)) + scale_y_continuous(breaks = 
            c(15:30)) #add line plot with labels

# create scatter plot
plt <- ggplot(mpg,aes(x=displ,y=cty)) #import dataset into ggplot2
#add scatter plot with labels
plt + geom_point() + xlab("Engine Size (L)") + ylab("City Fuel-Efficiency (MPG)") 

plt <- ggplot(mpg,aes(x=displ,y=cty,color=class)) #import dataset into ggplot2
plt + geom_point() + labs(x="Engine Size (L)", y="City Fuel-Efficiency (MPG)", 
                            color="Vehicle Class") #add scatter plot with labels

# alpha changes the transparency of each data point
# color changes the color of each data point
# shape changes the shape of each data point
# size changes the size of each data point

#add scatter plot with multiple aesthetics
plt <- ggplot(mpg,aes(x=displ,y=cty,color=class,shape=drv)) #import dataset into ggplot2
plt + geom_point() + labs(x="Engine Size (L)", y="City Fuel-Efficiency (MPG)", 
      color="Vehicle Class",shape="Type of Drive") 

# Create boxplots
plt <- ggplot(mpg,aes(y=hwy)) #import dataset into ggplot2
plt + geom_boxplot() #add boxplot

#add boxplot and rotate x-axis labels 45 degrees
plt <- ggplot(mpg,aes(x=manufacturer,y=hwy)) #import dataset into ggplot2
plt + geom_boxplot() + theme(axis.text.x=element_text(angle=45,hjust=1)) 

mpg_summary <- mpg %>% group_by(class,year) %>% 
  summarize(Mean_Hwy=mean(hwy), .groups = 'keep') 
#create summary table
plt <- ggplot(mpg_summary, aes(x=class,y=factor(year),fill=Mean_Hwy))
#create heatmap with labels
plt + geom_tile() + labs(x="Vehicle Class",y="Vehicle Year",fill="Mean Highway (MPG)")

mpg_summary <- mpg %>% group_by(model,year) %>% summarize(Mean_Hwy=mean(hwy), 
  .groups = 'keep') #create summary table
plt <- ggplot(mpg_summary, aes(x=model,y=factor(year),fill=Mean_Hwy)) #import dataset into ggplot2
plt + geom_tile() + labs(x="Model",y="Vehicle Year",fill="Mean Highway (MPG)") + #add heatmap with labels 
theme(axis.text.x = element_text(angle=90,hjust=1,vjust=.5)) #rotate x-axis labels 90 degrees
