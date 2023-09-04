## ----setup, include=FALSE-----------------------------------------------------
knitr::knit_hooks$set(purl = knitr::hook_purl)
knitr::opts_chunk$set(echo = TRUE)

## ---- echo = T----------------------------------------------------------------
testscores = c(25, 78, 56, 95)
testscores

## ---- echo = T----------------------------------------------------------------
testscores*2

## ---- echo = T----------------------------------------------------------------
attendance = c(0.8, 1, 0.9, 0.4)
testscores*attendance

## -----------------------------------------------------------------------------
listnum <- c(25, 78, 56, 95, 44, 58, 67, 36, 10, 75)
quantile(listnum, 0.44)

## -----------------------------------------------------------------------------
quantile(listnum)

## -----------------------------------------------------------------------------
quantile(listnum, 0.5)

## -----------------------------------------------------------------------------
quantile(listnum, c(0,1))

## -----------------------------------------------------------------------------
summary(listnum)

## -----------------------------------------------------------------------------
quantile(listnum)

## -----------------------------------------------------------------------------
######################################################
# YOUR NAME HERE
# SOC-S371
# Fall 2023
#
# Homework 1
######################################################

## READ THIS FIRST:
## Use this skeleton to complete the R portion of homework 1. Use the code
## from lecture as a guide.
## Read the comments and run the code line by line. Most lines are complete.
## Others need to have parts filled in.
##  - Replace "[ADD VARIABLE HERE]" with the appropriate variable name.
##  - Replace "## ADD CODE HERE ##" with the appropriate command(s).
## The help files for the relevant commands are included below.

## ---- eval = F----------------------------------------------------------------
#  # Print the length of the Gold medal data
#  length(Gold)

## -----------------------------------------------------------------------------
ls()

## -----------------------------------------------------------------------------
testscores = c(25, 78, 56, 95)
length(testscores)

## -----------------------------------------------------------------------------
print(testscores)

## -----------------------------------------------------------------------------
print(4)

## -----------------------------------------------------------------------------
print("Hello World!")

## ---- eval=F------------------------------------------------------------------
#  hist([ADD VARIABLE HERE], breaks=c(0,5,10,15,20,25,30,35,40),right=FALSE)
#  mean([ADD VARIABLE HERE])
#  sd([ADD VARIABLE HERE])
#  quantile([ADD VARIABLE HERE],c(0,.25,.5,.75,1))

## -----------------------------------------------------------------------------
load("medalsHW1.RData")
hist(Gold, breaks=c(0,5,10,15,20,25,30,35,40),right=FALSE)

## -----------------------------------------------------------------------------
mean(Gold)

## -----------------------------------------------------------------------------
sd(Gold)

## ---- echo = T----------------------------------------------------------------
#make this example reproducible
set.seed(1)
n=300
#This command simulated data with the sample size n=300 with mean 50 and standard deviation of 10;
#distribution is normal.
mydata = rnorm(n, mean=50, sd=10)  
#view first 6 observations in sample
head(mydata)
#As we asked R to do it, we have 300 observations in our data:
length(mydata)
#And we have mean of 50!
mean(mydata)
#find standard deviation of sample
sd(mydata)
# Calculate the 5 number quantile summary of the variable
quantile(mydata,c(0,.25,.5,.75,1))

## ---- echo=T------------------------------------------------------------------
hist(mydata, breaks=10,right=FALSE)
?hist

## ---- echo=T------------------------------------------------------------------
hist(mydata, breaks=10,right=FALSE, xlab = "Test Scores", col = "yellow", border = "green")

