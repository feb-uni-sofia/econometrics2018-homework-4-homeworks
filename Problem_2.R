## Homework 4, Problem 2
crime <- read.delim('https://s3.eu-central-1.amazonaws.com/econometrics2018/data/crime.csv', stringsAsFactors = FALSE)
str(crime)

## a)

fit <- lm(C ~ HS, data = crime)
summary(fit)

## /score -1 generic answer not related to the subject matter.
##Intercept is an estimator for b0
##HS is an estimator for b1
##Both are called regression coefficients

## b)

pairs( ~ C + U + I + HS, data = crime)

## c)

fit1 <- lm(C ~ HS + U, data = crime)
summary(fit1)

## intercept is estimator for b0
## HS is an estimator for b1
## U is an estimator for b2
## With U in the model the value of the Estimated coefficient
## becomes less than without U in the model

## /score -1 generic answer
## d)

pairs( ~ C + HS, data = crime)
## /score -4
##The politician's claims that the lower education spending will reduce the crime rates are wrong.
##We can see from the scatterplot matrix, that the lower HS bring more crimes.

## e)

fit3 <- lm(C ~ HS + U + I, data = crime)
summary(fit3)

## /score -5

