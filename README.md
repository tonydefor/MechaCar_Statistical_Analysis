# MechaCar_Statistical_Analysis

## Overview

In this challenge, we are going to be using our knowledge of R Studio to
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Part 1: Linear Regression to Predict Miles per Gallon (MPG)
- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

From the summary statics obtained on Linear regression two parameters vehicle length with a p-value of 260e-12 and ground clearance with a p-value of 5.21e-8 contributes to non-random amounts of variance as applied to the mpg values.

- Is the slope of the linear model considered to be zero? Why or why not?

The slopes of the variables are shown to be non-zero even though some are close to zero

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The model seems to be good predictive power for the MPG as the squared value of r is 0.7149 Coefficients: vehicle length: 6.267 vehicle weight: .001 spoiler angle: .069 ground clearance: 3.546 AWD: -3.411

## Part 2: Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 
- Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

From our results, it is infered in the total summary, the variance of all three lots falls under the maximum variance of 100 PSI with a variance of 62 PSI.

But when summary statics is drilled down for each lot it is interpreted that the major contributor to the variance is lot 3 with a variance of 170 PSI with the other two lots having variances below 8 PSI.

We can conclude that the manufacturing data meets the maximum variance in PSI requirement but lot 3 with a variance of 170 PSI does not meet the maximum variance requirement.

## Part 3: T-Test on Suspension Coils
- Briefly summarize your interpretations and findings for the t-test results

In the first t-test, the sample mean is not statistically different from the population mean of 1500 PSI with a p-value of 0.06. However, when t-tests are done on the individual lots, we can see that, lots 1 and 2 are not statistically different from the population mean with p-values of 1 and 0.6 respectively, lot 3 has a mean which is statistically different from the population mean with a p-value of 0.04.

1. T-test for Lot 1 p-value = 1

![T-Test1](https://user-images.githubusercontent.com/47859209/210495991-b062b0d9-20d4-4ad3-9f2b-c1e18a46265a.png)

2. T-test for Lot 2 p-value = .6072

![T-Test2](https://user-images.githubusercontent.com/47859209/210496089-801cb9c7-4a78-4954-94ad-774bb088e73d.png)

3. T-test for Lot 3 p-value = .04168

![T-Test3](https://user-images.githubusercontent.com/47859209/210496316-4decd836-00cd-48ac-b61f-99f413865aed.png)

## Part 4: Designing a Study Comparing the MechaCar to the Competition

For us to evaluate the performance of the MechaCar against the competition, it is essential to assess several other parameters that could be of interest to our client base. These variables include cost, city and highway fuel efficiency, horsepower, safety rating, and carbon waste output.

The next metrics to test should be the safety rating,carbon waste, horsepower, and highway fuel efficiency, which can address safety concerns of consumers.

We can then come up with our null hypothesis that these observations don't vary significantly from the competition, and the alternative hypothesis will provide insight that MechaCar does indeed vary significantly in these variables compared to the competition.

Multiple linear regression statistical summary would be best metrics to show how the variables impact the safety ratings for MechaCar and their competitors.

For us to generate comprehensive statistical tests, we would need the cost, fuel efficiency, horsepower, safety rating, and carbon waste output data from the MechaCar as well as the MechaCar's competitors.
