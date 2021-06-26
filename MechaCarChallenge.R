# Deliverable 1

library(dplyr)

MechaCar_mpg <- read.csv("MechaCar_mpg.csv")

lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)

summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))

# Deliverable 2
  
Suspension_Coil <- read.csv("Suspension_Coil.csv")

total_summary <- Suspension_Coil %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = NULL)

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance = var(PSI), SD = sd(PSI), .groups='keep')

# Deliverable 3
  
# Compare mean PSI of all manufacturing lots to mean PSI of the population=1500
  
t.test(Suspension_Coil$PSI,mu=1500)

# Create three new tables, filtered by manufacturing lot 

lot_1 <- Suspension_Coil %>% filter(Manufacturing_Lot=='Lot1' )
lot_2 <- Suspension_Coil %>% filter(Manufacturing_Lot=='Lot2' )
lot_3 <- Suspension_Coil %>% filter(Manufacturing_Lot=='Lot3' )
  
# Compare mean PSI of lot 1 to mean PSI of population = 1500
  
t.test(lot_1$PSI,mu=1500)

# Compare mean PSI of lot 2 to mean PSI of population 
  
t.test(lot_2$PSI,mu=1500)

# Compare mean PSI of lot 3 to mean PSI of population
  
t.test(lot_3$PSI,mu=1500)
