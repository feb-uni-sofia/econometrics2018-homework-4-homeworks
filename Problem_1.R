## Homework 4, Problem 1

library(dplyr)

## Read the data
houseWork <- read.csv('https://s3.eu-central-1.amazonaws.com/econometrics2018/data/houseWork.csv')
str(houseWork)

## a)

summary(houseWork)

## b)

muf <- mean(subset(houseWork$hours, houseWork$sex == 'f'))
mum <- mean(subset(houseWork$hours, houseWork$sex == 'm'))

## c)

houseWork <- within(houseWork, {
  female <- ifelse(sex == 'f', 'TRUE', 'FALSE')
  male <- ifelse(sex == 'm', 'TRUE', 'FALSE')
})

houseWork

## d)

fit <- lm(hours ~ female, data = houseWork)
summary(fit)

## e)


##Intercept is an estimator for b0.
##femaleTRUE is an estimator for b1.
##Both are regression coefficients.

## f)

##The null hypothesis states, that the average house-work hours for women is
##less or equal to the house-work for men. The alternative states, that the house-work for women
##is greater than the house-work for men.

## g)

T <- (-14.4555 - 32.8138) / 0.3186

pt(-T, df = 2)

## h)

##The P-value is greater than 0.05, so we do not reject the null hypothesis.

## i)

## j)

fit1 <- lm(hours ~ female + male, data = houseWork)
summary(fit1)
