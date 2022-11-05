#Deliverable 1

#load dplyr package

library(dplyr)

#read file
#MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

MechaCar_mpg <- read.csv("Desktop/Rutgers/Week 15/MechaCar_Statistical_Analysis/MechaCar_mpg.csv", check.names=F, stringsAsFactors = F)

#Linear Regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar_mpg)

#Summary

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar_mpg))



#Deliverable 2-
#read file
#Suspension <- read.csv(file='Suspension_coil.csv',check.names=F,stringsAsFactors = F)

Suspension_Coil <- read_csv("Desktop/Rutgers/Week 15/MechaCar_Statistical_Analysis/Suspension_Coil.csv")

#Total Summary
summarize_demo <- Suspension_Coil %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI)) 

#Lot summary
lot_demo <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))



#Deliverable 3 
#Perform t-test to determine consistency  
# Perform t-test across all Lots
t.test(Suspension$PSI,mu = 1500)


# Perform t-test on Lot 1
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

# Perform t-test on Lot 2
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)

# Perform t-test on Lot 3
t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)
              
