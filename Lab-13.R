## ----setup, include=FALSE, warning=F------------------------------------------
knitr::knit_hooks$set(purl = knitr::hook_purl)
knitr::opts_chunk$set(echo = TRUE)
library(knitr)
library(kableExtra)
library(tidyverse)


## ---- eval = F----------------------------------------------------------------
#  cor(x, y)

## ---- eval = F----------------------------------------------------------------
#  cor(data$x, data$y)

## -----------------------------------------------------------------------------
load("project.RData")
## I need to recode the variable, 
##so that higher score was referring to higher life satisfaction (see the Codebook)
GSS$SATLIFE_R = 8-GSS$SATLIFE 
cor(GSS$SATLIFE_R, GSS$INCOME)


## -----------------------------------------------------------------------------
table(is.na(GSS$SATLIFE_R))
table(is.na(GSS$INCOME))

## -----------------------------------------------------------------------------
cor(GSS$INCOME, GSS$SATLIFE_R, use = "complete.obs")

## ---- eval = F----------------------------------------------------------------
#  plot(x, y)
#  

## ---- eval =F-----------------------------------------------------------------
#  plot(data$x, data$y)
#  

## -----------------------------------------------------------------------------
plot(GSS$SATLIFE_R, GSS$INCOME, 
     main = "This is the scatter plot\nfor life satisfaction and income", 
     xlab = "Life satisfaction", 
     ylab = "Income", 
     col = "lightblue", 
     pch = 4)


## ---- eval = F----------------------------------------------------------------
#  lm(data$y ~ data$x)
#  

## ---- eval = F----------------------------------------------------------------
#  model1 = lm(data$y ~ data$x)
#  

## ---- eval = F----------------------------------------------------------------
#  summary(model1)

## -----------------------------------------------------------------------------
lm(GSS$SATLIFE_R ~ GSS$INCOME)

## -----------------------------------------------------------------------------
model1 = lm(GSS$SATLIFE_R ~ GSS$INCOME)
summary(model1)

## ---- echo = F----------------------------------------------------------------
load("gssconfidence.Rdata")

## -----------------------------------------------------------------------------
plot(confdata$CONFINAN, confdata$EDUC)


## -----------------------------------------------------------------------------
cor(confdata$CONFINAN, confdata$EDUC)


## -----------------------------------------------------------------------------
m1 = lm(confdata$CONFINAN~confdata$EDUC)
summary(m1)

