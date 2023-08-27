## ----setup, include=FALSE-----------------------------------------------------
knitr::knit_hooks$set(purl = knitr::hook_purl)
knitr::opts_chunk$set(echo = FALSE)

## ---- echo = TRUE-------------------------------------------------------------
mean(1:8)

## ---- echo = TRUE, error=TRUE-------------------------------------------------
Mean(1:8)

## ---- echo = TRUE, error = T--------------------------------------------------
mea n(1:8)

## ---- echo=TRUE, error=T------------------------------------------------------
mean(1:8
     

## ---- echo=T, global_options, include=TRUE------------------------------------
getwd()

## ---- echo=T------------------------------------------------------------------
setwd('/Users/KATE1/Desktop')
getwd() #To check that working directory changed, run this command again!

## ---- echo = T----------------------------------------------------------------
## Directions:
## This homework is intended simply to show us that you can run scripts in R.
## Run this script. It will print out a seven digit number and a time stamp.
## Copy the whole thing and submit it using Canvas online submission.
## There is no need to understand any what it does, but if you figure it out
## at any point in the semester, send me an email explaining it.

## ---- eval = FALSE, echo = T--------------------------------------------------
#  file.edit("HW 0.R")

## ---- eval = FALSE, echo = T--------------------------------------------------
#  file.edit("/Users/KATE1/Library/CloudStorage/OneDrive-IndianaUniversity/Active/Fall 2023/S371_Lab/Lab/HW 0.R")

## ---- eval = FALSE, echo = T--------------------------------------------------
#  load("medalsHW1.RData")

## ---- eval = FALSE, echo = T--------------------------------------------------
#  load("/Users/KATE1/Library/CloudStorage/OneDrive-IndianaUniversity/Active/Fall 2023/S371_Lab/Lab/medalsHW1.RData")

## ---- echo=T------------------------------------------------------------------
34*94*(3^4)/5-7*(5^7)

## ---- echo=T, eval = F--------------------------------------------------------
#  53*(6/(2^4))

## ---- echo=T, eval = F--------------------------------------------------------
#  14*(30-3^3)

## ---- echo=T, eval = F--------------------------------------------------------
#  (7/9)*68-73*(5/2)

## ---- echo=T------------------------------------------------------------------
x <- 13 #you can assign just one single value like number
x

## ---- echo=T------------------------------------------------------------------
name <- "Katya" #or you can assign a character
name

## ---- echo=T------------------------------------------------------------------
y <- c(1, 2, 3) #you can also assign a vector of numbers
y

## ---- echo=T------------------------------------------------------------------
lst1 <- list("Katya", 2, "S371") #or list of numbers and characters
lst1

## ---- echo = T----------------------------------------------------------------
13*4

## ---- echo = T----------------------------------------------------------------
x <- 13
x*4

## ---- echo = T, error = T-----------------------------------------------------
katya baldina <- 13

## ---- echo = T----------------------------------------------------------------
x <- 13 #I first assign the number of 13 to an R object “x”
x
x <-28 #Then I assign the number of 28 to an R object “x”
x #Now the R object “x” stores the number of 28 instead of 13

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

