#Load ggplot2 package
library(ggplot2)

#Load dplyr package
library(dplyr)

#Import and read the csv file as a data frame
mecha_car_data <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

#Perform linear regression using the lm() function
coeff_data <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car_data)

#Using the summary() function, determine the p-value and r-squared value for the linear regression model
summary(coeff_data)

#Import and read the csv file as a table
susp_data <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

#Write an R Script that creates a total_summary data frame using the summarize() function to obtain the mean, median, variance and std
total_summary <- susp_data %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), StDev=sd(PSI))

#Write an R Script that creates a lot_summary data frame using the summarize() function to obtain the mean, median, variance and std
lot_summary <- susp_data %>% group_by(Manufacturing_Lot)%>%summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), StDev=sd(PSI))

#Write an R Script using the t.test() function to determine if the PSI is different from the pop. mean
t.test(susp_data$PSI, mu=1500)

#Write 3 more scripts using the t.test() function and its subset() argument to determine 
#if the PSI is different from the pop. mean per sq, inch
t.test(subset(susp_data, Manufacturing_Lot=='Lot1')$PSI, mu=1500)
t.test(subset(susp_data, Manufacturing_Lot=='Lot2')$PSI, mu=1500)
t.test(subset(susp_data, Manufacturing_Lot=='Lot3')$PSI, mu=1500)