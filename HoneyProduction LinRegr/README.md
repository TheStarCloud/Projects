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

#### 
