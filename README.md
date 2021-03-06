
# MechaCar Statistical Analysis


## Linear Regression to Predict MPG


The output from the linear regression model (lm()) in R Studio shows the coefficients for vehicle length, ground clearance and intercept to likely add a non-random amount of variance to the mpg values found in the dataset.  The coefficient for vehicle length had the most significant p-value at 9.563E-12, a decimal value far less than the normal p-value significance level of 0.05.  The p-values for the coefficients of ground clearance and intercept were similar at 5.21E-08 and 5.08E-08 respectively.  The significance level of the p-value for the intercept may suggest we are missing some variables that are more closely correlated to the mpg values and suggests the linear model may not be the most effective model to predict the mpg values of MechaCar prototypes.  In addition, the vehicle weight had a p-value of 0.0776, which is below the 0.1 significance level for low importance of findings.  The slope of the linear model would not be considered zero as all the variables used in the lm() had coefficients that were not zero and the coefficients of the variables represent the slope of a line in the model.  This linear model may not predict the mpg of MechaCar prototypes effectively because of the significant p-value for the intercept, implying there are other factors not included in the linear model that may be more correlated to the mpg values.   

![linear_regression](https://user-images.githubusercontent.com/78699521/122134222-089a2980-cdf3-11eb-94dd-e1ec066bc7c1.png)


## Summary Statistics on Suspension Coils

### R code for Summary Statistics


The summary statistics for the suspension coil data show an overall mean of 1498.78 pounds per square inch(psi), a median of 1500 psi, a variance of ~62.29 psi, and a standard deviation of ~7.89 psi.  By manufacturing lot, Lot 1 has a mean of 1500.00 psi, median of 1500.0 psi, a variance of ~0.98 psi and standard deviation of ~0.99 psi; Lot 2 has a mean of 1500.20 psi, median of 1500.0 psi, a variance of ~7.47 psi, and a standard deviation of ~2.73 psi; and Lot 3 has a mean of 1496.14 psi, a median of 1498.5 psi, a variance of ~170.29 psi, and a standard deviaiton of ~13.05 psi.  Evaluating the whole data set, the suspension coils appear to meet the variance criteria with a variance of ~62.29 psi, under the 100 psi threshold.  However, by manufacturing lot, only  Lots 1 and 2 fit the design specification stating the variance of suspension coils must not exceed 100 pounds per square inch with variances of ~0.98 psi and ~7.47 psi respectively. Lot 3 does not meet this design specification with a variance of ~170.29 psi, exceeding the 100 psi threshold. 


### Code used to create Total and Lot Summary dataframes in R Studio


![suspension_coil](https://user-images.githubusercontent.com/78699521/122658632-79f41800-d124-11eb-9021-23b11505e3af.png)


### Total Summary DataFrame
![total_summary](https://user-images.githubusercontent.com/78699521/122658637-8e381500-d124-11eb-8617-f7bf200396be.png)


### Lot Summary DataFrame
![lot_summary](https://user-images.githubusercontent.com/78699521/122658642-942df600-d124-11eb-9ac8-f5504f1a0bac.png)


## T-Tests on Suspension Coils


### T-test comparing all manufacturing lots to the population
Comparing the psi of suspension coils from all manufacturing lots with the average psi of the population of suspension coils with a t-test results in a p-value of 0.060 and does not meet the normal threshold of significance of a p-value of 0.05.  This suggests differences in psi between the manufacturer and the population at large are not statistically significant for a normal significance level.  It also shows that 95% of the data are between a psi of 1497.51 and 1500.05, and the mean psi of all manufacturing lots is 1498.78


![ttest1](https://user-images.githubusercontent.com/78699521/122690003-8edfb280-d1db-11eb-9a36-81818a0117e5.png)


### Filtering suspension coil data by manufacturing lot
![lots](https://user-images.githubusercontent.com/78699521/122690007-94d59380-d1db-11eb-85fb-2c7a601fc85d.png)


### T-test comparing Lot 1 to the population
Comparing the psi values from manufacturing Lot 1 to the population mean of 1500 psi with a t-test reveals a p-value of 1, suggesting no significant difference between the average suspension coil psi of Lot 1 and the population at large.  The t-test also shows 95% of the data from Lot 1 was between 1499.72 and 1500.28, and the mean psi from Lot 1 was 1500, the same as the average psi of the population it was compared against.


![lot_1](https://user-images.githubusercontent.com/78699521/122690010-999a4780-d1db-11eb-94bb-afe9bce9967f.png)


### T-test comparing Lot 2 to the population
The psi values from manufacturing Lot 2 compared with the population mean of 1500 psi in a t-test shows a p-value of 0.61, above the 0.05 normal significance level, suggesting the differences in psi between Lot 2 and the population are not significant and likely due to random chance.


![lot_2](https://user-images.githubusercontent.com/78699521/122690012-9dc66500-d1db-11eb-80b8-701831627a19.png)


### T-test comparing Lot 3 to the population
The t-test comparing the average psi of Lot 3 suspension coils with the mean psi of the population of suspension coils results in a p-value of 0.042, a value below the 0.05 significance threshold.  This suggests the variability in the psi of Lot 3 suspension coils is statistically significant and likely due to an outside force, not random chance.  The t-test also shows the mean psi of Lot 3 suspension coils to be 1496.14, and 95% of the psi values in Lot 3 are between 1492.43 and 1499.85. 


![lot_3](https://user-images.githubusercontent.com/78699521/122690017-a28b1900-d1db-11eb-9e7f-2902eb75d8fe.png)


## Study Design: MechaCar vs Competition


One study to quantify how MechaCar performs against the competition would compare city and highway fuel efficiency for MechaCar compact vehicles and similar compact car models from competing manufacturers.  The null hypothesis would be the differences in fuel efficiency are due to random chance between MechaCar vehicles and it's competitor's vehicles, in essence the differences in fuel efficiency between vehicle brands is not statistically significant.  The alternative hypothesis is differences between the metrics for MechaCar vehicles and the metrics for competitor's vehicles are not due to random chance and statistical analysis shows a significant difference in the fuel efficiencies between MechaCar vehicles and it's competitor's vehicles.  The first statistical test used could be the linear model test, followed by a summary of the linear model test for MechaCar compact cars and the competitor's version of compact cars.  The linear model and summary statistics would show the variance in city and highway fuel efficiency in the dataset for  MechaCars compact cars and the variance in fuel efficiency in the dataset for the competitor's version of compact cars.  The linear model test and sumary would show the average fuel efficiency for the variables in each dataset and the variance within the data. Then t-tests could be performed comparing the average fuel efficiency of MechaCars to the average fuel efficiency of compact cars overall.  If a specific competitor was chosen, the average fuel efficiency of that brand of compact car would also be compared to the average fuel efficiency of compact cars overall with a t-test.  The data needed to run this statistical test are the measured city and highway fuel efficiency values for a large set of compact MechaCars, a similar sized set of measured city and highway fuel efficiency values for a specific competitor's brand of compact car, and the average fuel efficiency for the general population of compact cars made in the same year as the MechaCar and competitor vehicles.  This information could be available from vehicle manufacturers, EPA fuel efficiency standards and automotive publications like Kelley Blue Book.             


