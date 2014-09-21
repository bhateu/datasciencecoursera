Sample ShinyApp : MPG Prediction 
========================================================
date: September 20, 2014

Objective
========================================================

This presentation builds up the pitch for the sample shiny app. The Shinyapp, predicts MPG of a car given it's Engine Power in hp and number of gears.




Data Used
========================================================

The app uses MTCARS dataset. It builds up a linear regression model.

Data Fields considered :

- hp : Engine Power in horsepower (valid input from 60hp-300hp)
- gear : Number of gears in car (3, 4 or 5 gears)
- mpg : Predicted output denoting miles per gallon


```r
data(mtcars)
```

Model Used
========================================================

The app buils up a linear regression model using the lm function with MPG as the predictor and HP and GEAR and the regressors.


```r
model <- lm(mpg ~ hp + gear, data = mtcars)
```


Results
=======================================================

The app takes input from the user. The input values are valid values for hp and number of gears.
The app then predicts the mpg for this car agaisnt the linear regression model fit as show in previous slide.


```r
    model <- lm(mpg ~ hp + gear, data = mtcars)
    coeff <- model$coefficients
  		
    #sample input = i.hp = 120 & i.gear = 4
    i.hp =120
    i.gear = 4
		result <- coeff[1] + i.hp*coeff[2] + i.gear*coeff[3]

    result
```

```
(Intercept) 
      22.79 
```
