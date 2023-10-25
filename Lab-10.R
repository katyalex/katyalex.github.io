## ----setup, include=FALSE, warning=F------------------------------------------
knitr::knit_hooks$set(purl = knitr::hook_purl)
knitr::opts_chunk$set(echo = TRUE)
library(knitr)
library(kableExtra)
library(tidyverse)


## ---- eval=F, echo = T--------------------------------------------------------
#  prop.test(x,n,p=Y, alternative=“XXX”)

## ---- echo=F------------------------------------------------------------------
load('socmedia.RData')

## -----------------------------------------------------------------------------
snapchat <- socmedia$SNAPCHAT
table(snapchat)

## -----------------------------------------------------------------------------
prop.test(308,1345)

## -----------------------------------------------------------------------------
sum(snapchat=="YES")

## -----------------------------------------------------------------------------
sum(snapchat=="YES")
table(snapchat)

## -----------------------------------------------------------------------------
length(snapchat)

## -----------------------------------------------------------------------------
prop.test(sum(snapchat=="YES"), length(snapchat))

## -----------------------------------------------------------------------------
facebook <-socmedia$FACEBOOK
prop.test(sum(facebook=="YES"), length(facebook), p = 0.7)

## ---- eval = F----------------------------------------------------------------
#  prop.test(c(a, b), c(X,Y))

## -----------------------------------------------------------------------------
table(snapchat[facebook=="YES"])

## -----------------------------------------------------------------------------
table(snapchat[facebook=="NO"])

## -----------------------------------------------------------------------------
length(snapchat[facebook=="YES"])
length(snapchat[facebook=="NO"])

## -----------------------------------------------------------------------------
prop.test(c(277,31),c(1005,340))

## -----------------------------------------------------------------------------
prop.test(c(sum(snapchat[facebook=="YES"]=="YES"),
            sum(snapchat[facebook=="NO"]=="YES")),
          c(length(snapchat[facebook=="YES"]),
            length(snapchat[facebook=="NO"])))

## -----------------------------------------------------------------------------
load('pewdataw38.Rdata')

## ---- echo=F, out.width="50%",  fig.align = 'center', warning=F---------------
library(kableExtra)

head(pewdata) %>%
  kable(booktabs = T) %>%
  kable_styling(full_width = F, html_font = "Cambria")  


## ---- eval = F----------------------------------------------------------------
#  new_vector <- datasetname$variable_of_interest[datasetname$subsetting_var==value]

## ---- eval =F-----------------------------------------------------------------
#  conf_white <- pewdata$VTCONF_COM_W38[pewdata$F_RACETHN=='White']

## ---- eval = F----------------------------------------------------------------
#  sum(vector=="value")

## ---- eval = F----------------------------------------------------------------
#  length(vector)

## ---- eval = F----------------------------------------------------------------
#  prop.test(sum(vector=="value"), length(vector))

## ---- eval = F----------------------------------------------------------------
#  prop.test(c(a, b)), c(total_a, total_b))

