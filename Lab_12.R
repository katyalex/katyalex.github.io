## ----setup, include=FALSE, warning=F------------------------------------------
knitr::knit_hooks$set(purl = knitr::hook_purl)
knitr::opts_chunk$set(echo = TRUE)
library(knitr)
library(kableExtra)
library(tidyverse)


## ---- eval= F-----------------------------------------------------------------
#  TABOBJECT = table(CATVAR1, CATVAR2)
#  chisq.test(TABOBJECT)

## ---- echo = F----------------------------------------------------------------
load('socmedia.RData')

## -----------------------------------------------------------------------------
twowaytable = table(socmedia$SNAPCHAT, socmedia$AGE2)
twowaytable

## -----------------------------------------------------------------------------
chisq.test(twowaytable)

## -----------------------------------------------------------------------------
xtest <- chisq.test(twowaytable)

## -----------------------------------------------------------------------------
xtest$observed
xtest$expected

## -----------------------------------------------------------------------------
(xtest$observed - xtest$expected)^2/xtest$expected

## -----------------------------------------------------------------------------
sum((xtest$observed - xtest$expected)^2/xtest$expected)

## ---- eval = F----------------------------------------------------------------
#  TABOBJECT = table(CATVAR1, CATVAR2)

## ---- eval = F----------------------------------------------------------------
#  xtest <- chisq.test(TABOBJECT)

