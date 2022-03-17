# HoneyBees Linear Regression Project

The intention of this project was primarily to practice Linear Regression and Multiple Linear Regression Machine Learning models.  I was also interested to learn about the trends in honeybee population and honey production, since I remember a few years back when we would frequently hear about the decline of bees and how their endangerment must be prevented.
The data set I used contained:
- the number of honey producing colonies
- the honey yield per colony (in pounds)
- the total honey production
- the 'stocks' or stored, unsold supply of honey held by producers come the end of the year (Dec 15th) in pounds
- the price per pound of honey
- the value of the honey production (calculated as total production * price per pound) in USD

for each state, for each year from 1998 - 2012. It contained 8 columns and 626 rows.  The data was [sourced from Kaggle](https://www.kaggle.com/jessicali9530/honey-production).

#### Honey Production in Top 5 States
![top5states.png](https://github.com/TheStarCloud/Projects/blob/main/HoneyProduction%20LinRegr/images/top5states.png?raw=true "Honey production in top 5 states")

### Single Linear Regressions
To see trends in bee populations and honey production, I created linear regression models, and used them to predict when each metric might reach zero if the shown trend were to continue.
#### Honey Yield per Colony
![ypcbyyear.png](https://github.com/TheStarCloud/Projects/blob/main/HoneyProduction%20LinRegr/images/ypcbyyear.png?raw=true "Honey Yield per Colony")
![future_ypcbyyear.png](https://github.com/TheStarCloud/Projects/blob/main/HoneyProduction%20LinRegr/images/future_ypcbyyear.png?raw=true "Predicted Honey Yield per Colony")  
The predicted yield per colony in 2023 is 43 pounds.  
The predicted yield per colony in 2050 is 14.6 pounds.  
The predicted yield per colony in 2060 is 4.1 pounds.  
This model predicts that the average yield per honeybee colony will reach 0 in the year 2063 if this trend continues.

#### Total Honey Production
![prodbyyear.png](https://github.com/TheStarCloud/Projects/blob/main/HoneyProduction%20LinRegr/images/prodbyyear.png?raw=true "Total Honey Production")
![future_prodbyyear.png](https://github.com/TheStarCloud/Projects/blob/main/HoneyProduction%20LinRegr/images/future_prodbyyear.png?raw=true "Predicted Total Honey Production")  
The predicted honey production in 2023 is 84869809.5 pounds.  
The predicted honey production in 2035 is 25456438.1 pounds.  
This model predicts that honey production will reach 0 in the year 2040 if this trend continues.

#### Total Number of HoneyBee Colonies
![numcolbyyear.png](https://github.com/TheStarCloud/Projects/blob/main/HoneyProduction%20LinRegr/images/numcolbyyear.png?raw=true "Total Number of Colonies")
![future_numcolbyyear.png](https://github.com/TheStarCloud/Projects/blob/main/HoneyProduction%20LinRegr/images/future_numcolbyyear.png?raw=true "Predicted Number of Colonies")  
The predicted number of HoneyBee colonies in 2023 is 2324038.1 colonies.  
The predicted number of HoneyBee colonies in 2050 is 2036295.2 colonies.  
The predicted number of HoneyBee colonies in 2100 is 1503438.1 colonies.  
The predicted number of HoneyBee colonies in 2200 is 437723.8 colonies.  
This model predicts that the number of colonies will reach 0 in the year 2241 if this trend continues.

#### Total Stored Honey Stocks
![stocksbyyear.png](https://github.com/TheStarCloud/Projects/blob/main/HoneyProduction%20LinRegr/images/stocksbyyear.png?raw=true "Total pounds of stored honey")
![future_stocksbyyear.png](https://github.com/TheStarCloud/Projects/blob/main/HoneyProduction%20LinRegr/images/future_stocksbyyear.png?raw=true "Predicted stocks of honey")
The predicted total honey stored by producers in 2023 is 677764.3 pounds.  
This model predicts that the total honey stored by producers will reach 0 in the year 2023 if this trend continues.

#### Honey Prices
![pricebyyear.png](https://github.com/TheStarCloud/Projects/blob/main/HoneyProduction%20LinRegr/images/pricebyyear.png?raw=true "Average price per pound of honey")
![future_price.png](https://github.com/TheStarCloud/Projects/blob/main/HoneyProduction%20LinRegr/images/future_price.png?raw=true "Predicted honey prices")  
The predicted average price for honey in 2022 is $3.18 per pound.  
*While this model is based ona singular regression of the pattern in honey prices over the years, I created another model that uses multiple features to predict honey prices below.*

### Looking for Growth
With overall trends showing bee populations and honey production worryingly decreasing, I wanted to see which states (if any) saw growth in this time, so that possible solutions could be modeled after them.  To do this I looked for states that had a positive rate of change in their trend line for total production, and then created plots to show their honey production over the years.

![KYprodgrowth.png](https://github.com/TheStarCloud/Projects/blob/main/HoneyProduction%20LinRegr/images/KYprodgrowth.png?raw=true "Honey production growth in Kentucky")
![MSprodgrowth.png](https://github.com/TheStarCloud/Projects/blob/main/HoneyProduction%20LinRegr/images/MSprodgrowth.png?raw=true "Honey production growth in Mississippi")
![NCprodgrowth.png](https://github.com/TheStarCloud/Projects/blob/main/HoneyProduction%20LinRegr/images/NCprodgrowth.png?raw=true "Honey production growth in North Carolina")
![NDprodgrowth.png](https://github.com/TheStarCloud/Projects/blob/main/HoneyProduction%20LinRegr/images/NDprodgrowth.png?raw=true "Honey production growth in North Dakota")
![NJprodgrowth.png](https://github.com/TheStarCloud/Projects/blob/main/HoneyProduction%20LinRegr/images/NJprodgrowth.png?raw=true "Honey production growth in New Jersey")

I then found the top 5 states with best average increase in honey production per year, and the 5 states with the worst decline.  
5 States with the best growth in Honey Production (average increase in lbs per year):  
state: growth  
ND:  664928.57  
MS:   41400  
NC:   11257.14  
KY:    2157.14  
NJ:     696.43  

5 States with the worst decline in Honey Production (average decrease in lbs per year):  
state:        growth  
WI: -261846.4  
MN: -316767.9  
SD: -417021.4  
FL: -995650.0  
CA: -1335000.0  

I then tried my hand at creating a choropleth map for the first time - to map out the growth/decline of Honey Production by state to see if there were any regional trends.  While I can only include a PNG file here, if you run the actual ipynb file of the script, the map is interactable - you can zoom in and out, and mouse over individual states to see their abbreviated names and average yearly growth.  
![growthmap.png](https://github.com/TheStarCloud/Projects/blob/main/HoneyProduction%20LinRegr/images/growthmap.png?raw=true "Honey production growth by state")  
As you can see, North Dakota is the only state with *noticeably* significant growth.  Meanwhile, California and Florida had the most drastic declines (even though, as shown in the first graphic, they are among the highest producing states).

### Multiple Linear Regression to predict Honey Prices
Using the number of colonies, honey yield per colony, total honey produced, honey stocks, and the year as features, I created a Multiple Linear Regression model to predict honey prices.  
This model had a residual analysis score of 0.586 for the training set, and 0.487 for the test set.  So only a moderate correlation.  It offers predictions based on general trends, but not terribly accurate.  Ideally, I would love to have more data features to work with that could impact honey prices, such as inflation rate or any other relavent data.  
![price_pred_accuracies.png](https://github.com/TheStarCloud/Projects/blob/main/HoneyProduction%20LinRegr/images/price_pred_accuracies.png?raw=true "MLR Prediction Accuracy")  
The strongest predictors out of the features I had were a positive correlation with year, and a negative correlation with honey yield per colony.

### Other Thoughts
After creating the single regression models, I was honestly surprised by how much faster the decline of honey production seemed to be than the decline of honeybee colonies.  Why would we run out of honey so much faster than bees?  I decided to dig into some outside research, and found out that while most animals can grow their population exponentially, bee colonies can only grow their population _linearly_, because each colony has only one queen that can produce offspring.  And even this linear growth will taper off once the colony reaches a maximum capacity [source](https://scientificbeekeeping.com/understanding-colony-buildup-and-decline-part-4/).  
To sustain colony numbers, beekeepers split colonies once they reach a certain size.  But each time colonies are split, honey production slows down for each new, smaller colony since they have fewer troops.  This could explain why the model shows us running out of honey much faster than running out of colonies.  Realistically, the amount of honey would likely taper off near the end rather than hitting zero in a strictly linear fashion.

It is also worth noting that the data used in this project only ranges from 1998 - 2012.  Since this colony collapse syndrome has been discovered by scientists, considerable efforst have been made to restabalize bee populations, and have been largeley successful.  [In 2017, honeybee colony loss hit its lowest point in years](https://www.washingtonpost.com/news/wonk/wp/2015/07/23/call-off-the-bee-pocalypse-u-s-honeybee-colonies-hit-a-20-year-high/).  While we need to continue these efforts to keep honeybee populations stable, the reality is no longer as bleak as it was from the observations that these models were built on.
