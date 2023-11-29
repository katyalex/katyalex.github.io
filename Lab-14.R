## ----setup, include=FALSE, warning=F------------------------------------------
knitr::knit_hooks$set(purl = knitr::hook_purl)
knitr::opts_chunk$set(echo = TRUE)
library(knitr)
library(kableExtra)
library(tidyverse)


## ---- echo = F----------------------------------------------------------------

# create matrix with 4 columns and 4 rows
data= matrix(c(31, 43, 51, 125, 69, 57, 49, 175, 100, 100, 100, 300),nrow = 3, ncol = 4,byrow = TRUE)
# specify the column names and row names of matrix
colnames(data) = c('6th','7th','8th', 'Total')
rownames(data) <- c('Healthy snack','Unhealthy snack','Total')
 
# assign to table
final=as.table(data)
 
# display
final


## ---- echo = F----------------------------------------------------------------

# create matrix with 4 columns and 4 rows
data= matrix(c(41.67, 41.67, 41.67, 125, 58.33, 58.33, 58.33, 175, 100, 100, 100, 300),nrow = 3, ncol = 4,byrow = TRUE)
# specify the column names and row names of matrix
colnames(data) = c('6th','7th','8th', 'Total')
rownames(data) <- c('Healthy snack','Unhealthy snack','Total')
 
# assign to table
final=as.table(data)
 
# display
final


## ---- echo = F----------------------------------------------------------------

# create matrix with 4 columns and 4 rows
data= matrix(c(2.7431, 0.043, 2.091, 1.950, 0.030, 1.493),nrow = 2, ncol = 3,byrow = TRUE)
# specify the column names and row names of matrix
colnames(data) = c('6th','7th','8th')
rownames(data) <- c('Healthy snack','Unhealthy snack')
 
# assign to table
final=as.table(data)
 
# display
final

## -----------------------------------------------------------------------------
sum(final)

## -----------------------------------------------------------------------------
pchisq(q = sum(final),df=2, lower.tail = FALSE)

