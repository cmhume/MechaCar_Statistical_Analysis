
# MechaCar Statistical Analysis


## Linear Regression to Predict MPG

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?


Is the slope of the linear model considered to be zero? Why or why not?


Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?


![linear_regression](https://user-images.githubusercontent.com/78699521/122134222-089a2980-cdf3-11eb-94dd-e1ec066bc7c1.png)


## Summary Statistics on Suspension Coils

### R code for Summary Statistics


#### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?


The summary statistics for the suspension coil data show an overall mean of 1498.78 pounds per square inch(psi), a median of 1500 psi, a variance of ~62.29 psi, and a standard deviation of ~7.89 psi.  By manufacturing lot, Lot 1 has a mean of 1500.00 psi, median of 1500.0 psi, a variance of ~0.98 psi and standard deviation of ~0.99 psi; Lot 2 has a mean of 1500.20 psi, median of 1500.0 psi, a variance of ~7.47 psi, and a standard deviation of ~2.73 psi; and Lot 3 has a mean of 1496.14 psi, a median of 1498.5 psi, a variance of ~170.29 psi, and a standard deviaiton of ~13.05 psi.  Lots 1 and 2 fit the design specification stating the variance of suspension coils must not exceed 100 pounds per square with variances of ~0.98 psi and ~7.47 psi respectively. Lot 3 does not meet this design specification with a variance of ~170.29 psi, exceeding the 100 psi threshold. 

![suspension_coil](https://user-images.githubusercontent.com/78699521/122658632-79f41800-d124-11eb-9021-23b11505e3af.png)


### Total Summary DataFrame
![total_summary](https://user-images.githubusercontent.com/78699521/122658637-8e381500-d124-11eb-8617-f7bf200396be.png)


### Lot Summary DataFrame
![lot_summary](https://user-images.githubusercontent.com/78699521/122658642-942df600-d124-11eb-9ac8-f5504f1a0bac.png)





## T-Tests on Suspension Coils


briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.

![ttest](https://user-images.githubusercontent.com/78699521/122689285-5be6f000-d1d6-11eb-8fb6-e75546fa5e40.png)

## Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?

The statistical study design has the following:
A metric to be tested is mentioned (5 pt)
A null hypothesis or an alternative hypothesis is described (5 pt)
A statistical test is described to test the hypothesis (5 pt)
The data for the statistical test is described (5 pt)
