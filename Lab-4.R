## ----setup, include=FALSE-----------------------------------------------------
knitr::knit_hooks$set(purl = knitr::hook_purl)
knitr::opts_chunk$set(echo = TRUE)

## ---- echo = T, error=T-------------------------------------------------------
##This is example of a comment.

## ---- echo = T, error=T-------------------------------------------------------
This is not comment.

## -----------------------------------------------------------------------------
load('smdata.Rda') ## Remember that your dataset should be in the same working directory as your R working directory (to check it, go to the Lab 2 materials)

## -----------------------------------------------------------------------------
View(smdata)

## ---- echo=F, out.width="50%",  fig.align = 'center', warning=F---------------
library(kableExtra)

head(smdata) %>%
  kable(booktabs = T) %>%
  kable_styling(full_width = F, html_font = "Cambria")  %>%
  row_spec(2, bold = TRUE, italic = F, color = 'white', background = 'black') %>%                 kable_classic(full_width = F, html_font = "Cambria")


## -----------------------------------------------------------------------------
summary(smdata)

## -----------------------------------------------------------------------------
summary(smdata$AGE)

## -----------------------------------------------------------------------------
table(smdata$SNAPCHAT)

## -----------------------------------------------------------------------------
table(smdata$AGE2)

## -----------------------------------------------------------------------------
table(smdata$AGE2)/sum(table(smdata$AGE2))

## -----------------------------------------------------------------------------
table(smdata$SNAPCHAT, smdata$AGE2)

## -----------------------------------------------------------------------------
table(smdata$TWITTER, smdata$AGE2)

## -----------------------------------------------------------------------------
table(smdata$SNAPCHAT)

## -----------------------------------------------------------------------------
table(smdata$SNAPCHAT)

## -----------------------------------------------------------------------------
2809-1345 #number of missing values in the SNAPCHAT variable

## -----------------------------------------------------------------------------
head(is.na(smdata$SNAPCHAT)) #head() function shows you the first six observations in the vector or dataframe (to save the space)

## -----------------------------------------------------------------------------
is.na(smdata$SNAPCHAT)

## -----------------------------------------------------------------------------
table(is.na(smdata$SNAPCHAT))

## -----------------------------------------------------------------------------
x <- rnorm(10000,10,2)
# ADD COMMENT HERE
plot(x, main = 'x values', pch=16, cex=.2)

## ---- echo=T, eval=F----------------------------------------------------------
#  #######################################################
#  # Part 2
#  #######################################################
#  # ADD COMMENT HERE
#  mean(x)
#  # ADD COMMENT HERE
#  sd(x)
#  # ADD COMMENT HERE
#  quantile(x,c(.0015,.025,.16,1-.16,1-.025,1-.0015))
#  
#  # ADD COMMENT HERE
#  mean(y)
#  # ADD COMMENT HERE
#  sd(y)
#  # ADD COMMENT HERE
#  quantile(y,c(.0015,.025,.16,1-.16,1-.025,1-.0015))

