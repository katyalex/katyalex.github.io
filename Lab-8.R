## ----setup, include=FALSE, warning=F------------------------------------------
knitr::knit_hooks$set(purl = knitr::hook_purl)
knitr::opts_chunk$set(echo = TRUE)
library(knitr)
library(kableExtra)
library(tidyverse)


## -----------------------------------------------------------------------------
set.seed(10221)
x = rnorm(1000, 5, 10)
mean(x)
t.test(x, mu = 5, alternative = "two.sided")

## -----------------------------------------------------------------------------
set.seed(10221)
x = rnorm(1000, 5, 10)
mean(x)
t.test(x, mu = 0, alternative = "two.sided")

## ---- echo = F----------------------------------------------------------------
set.seed(10221)
n <- 100000
male_inc <- rlnorm(n, meanlog=log(830), sdlog=1.0)
female_inc <- rlnorm(n, meanlog=log(1000), sdlog=1.0)

## -----------------------------------------------------------------------------
set.seed(10221)
median(female_inc) 
median(male_inc)
t.test(female_inc, male_inc, alternative = "two.sided", var.equal = FALSE)

## ---- echo = F----------------------------------------------------------------
setwd("~/Library/CloudStorage/OneDrive-IndianaUniversity/Active/Fall 2023/S371_Lab/Lab")
load('HW5.RData')

## ---- eval = F----------------------------------------------------------------
#  table(hhdata$divorce) #Use '$' sign to choose the variable within dataset
#  #Variable divorce contains information on divorced (=1) and married (=2) participants.

## ---- eval = F----------------------------------------------------------------
#  mean(hhdata$variable) #replace variable with the name of variable of interest: hompop, babies, preteen, teens, adults
#  sd(hhdata$variable) #replace variable with the name of variable of interest: hompop, babies, preteen, teens, adults

## -----------------------------------------------------------------------------
table(hhdata$sex[hhdata$divorce==1]) #Let's table sex for divorced people
table(hhdata$sex[hhdata$divorce==2]) #Let's table sex for married people

## -----------------------------------------------------------------------------
table(hhdata$sex[hhdata$babies>1]) #Let's table sex for people who have more than one child

## ---- eval = F----------------------------------------------------------------
#  mean(hhdata$variable[hhdata$divorce==1]) #replace variable with the name of variable of interest: hompop, babies, preteen, teens, adults
#  
#  sd(hhdata$variable[hhdata$divorce==2]) #replace variable with the name of variable of interest: hompop, babies, preteen, teens, adults
#  
#  mean(hhdata$variable[hhdata$divorce==2]) #replace variable with the name of variable of interest: hompop, babies, preteen, teens, adults
#  
#  sd(hhdata$variable[hhdata$divorce==2]) #replace variable with the name of variable of interest: hompop, babies, preteen, teens, adults
#  

## ---- eval = F----------------------------------------------------------------
#  #replace variable with the name of variable of interest: hompop, babies, preteen, teens, adults
#  t.test(hhdata$variable[hhdata$divorce ==1],hhdata$variable[hhdata$divorce ==2])

## -----------------------------------------------------------------------------
t.test(hhdata$sex[hhdata$divorce ==1],hhdata$sex[hhdata$divorce ==2])

