## ----setup, include=FALSE, warning=F------------------------------------------
knitr::knit_hooks$set(purl = knitr::hook_purl)
knitr::opts_chunk$set(echo = TRUE)
library(knitr)
library(kableExtra)
library(tidyverse)


## ---- echo = F,  fig.align = 'center'-----------------------------------------
stats <- data.frame(matrix(ncol=3,
                           nrow=2, 
                           dimnames=list(NULL, 
                                        c('Variable',
                                          'Quantitative', 
                                          'Categorical'))))

stats[1, 1] = "Quantitative"
stats[2, 1] = "Categorical"
stats[1, 2] = "Scatter plot"
stats[2, 2] = "Box plot, bar chart"
stats[1, 3] = "Box plot, bar chart"
stats[2, 3] = "Table or bar chart"

library(kableExtra)
stats %>%
  kbl(digits=4) %>%
   kable_classic(full_width = F, html_font = "Cambria")

## ---- eval=F------------------------------------------------------------------
#  plot(x, y) #x and y are names for your variables

## ---- echo = F----------------------------------------------------------------
x = rnorm(1000, 10, 2)
y = x*2+rnorm(1000, 1, 2)


## ---- eval = T, out.width="45%",  fig.align = 'center', warning=F-------------
par(mfrow=c(2,3))
plot(x, y, main = "This is the main title") #set the main title
plot(x, y, xlab = "This is the x-axis title") #set the x-axis title
plot(x, y, ylab = "This is the y-axis title" ) #set the y-axis title
plot(x, y, col = "red" ) #Color of dots in the scatter plot
plot(x, y, pch = 0) #Different dot shapes in the scatter plot; 
#This should be an integer from 0 to 25. If you don’t type the pch option, 
#R would use the default value of 1 in pch option

## ---- echo = T, out.width="60%",  fig.align = 'center', warning=F, eval=T-----
plot(x, y, main = "This is the main title", 
     xlab = "This is the x-axis title", 
     ylab = "This is the y-axis title", 
     col = "red", 
     pch = 0)

## ---- eval = F, echo = T------------------------------------------------------
#  #Three separate lines of code (they have to be in this order!)
#  
#  #It asks R to create a new png file called scatter.png in the working directory
#  #with the dimension of 1200X800. All the graphs produced after this line of code
#  #will be put into the scatter.png file.
#  #(you can think of this as a “start recording button”)
#  png('scatter.png', width = 1200, height = 800)
#  
#  #The second line is just the usual scatter plot function
#  plot(x,y)
#  
#  #The third line is the dev.off() function.
#  #You don’t need to put anything within the parentheses.
#  #Any graphs produced between the first line (png() function)
#  #and this line will be put into the scatter.png file (“stop recording button”)
#  dev.off()

## ---- echo = F, out.width="60%",  fig.align = 'center', warning=F, eval=T-----

population = rchisq(1000000, 10, 2)
sample = sample(population, 1000)
means = c()
for (i in 1:100) {
  
  sampl = sample(population, 1000)
  means[i] = mean(sampl)

}

stats <- data.frame(matrix(ncol=4,
                           nrow=2, 
                           dimnames=list(NULL, 
                                        c('Properties',
                                          'Population', 
                                          'Sample',
                                          'Sampling'))))

stats[1, 1] = "Mean"
stats[2, 1] = "Standard Deviation"
stats[1, 2] = paste(round(mean(population), digits = 2))
stats[1, 3] = paste(round(mean(sample), digits = 2))
stats[1, 4] = paste(round(mean(means), digits = 2))
stats[2, 2] = paste(round(sd(population), digits = 2))
stats[2, 3] = paste(round(sd(sample), digits = 2))
stats[2, 4] = paste(round(sd(means), digits = 2))

library(kableExtra)
stats %>%
  kbl(digits=4) %>%
   kable_classic(full_width = F, html_font = "Cambria")

par(mfrow=c(1,3))

hist(population, 
     main = "Distribution of Hourly salary \n of all USA residents", 
     xlab = "",
     ylab = "")
abline(v = mean(population), col="red", lwd = 2)
abline(v = sd(population), col="green", lwd = 2)

hist(sample, main = "Distribution of Hourly salary \n from one random sample (n=1000)", 
     xlab = "",
     ylab = "")
abline(v = mean(sample), col="red", lwd = 2)
abline(v = sd(sample), col="green", lwd = 2)

hist(means, main = "Sampling distribution of means \n of 100 random samples (n=1000) \n derived from population distribution", 
     xlab = "",
     ylab = "")
abline(v = mean(means), col="red", lwd = 2)
abline(v = sd(means), col="green", lwd = 2)



## ---- echo = F, out.width="40%",  fig.align = 'center', warning=F, eval=T-----
par(mfrow=c(1,3))

hist(population, 
     main = "Distribution of Hourly salary \n of all USA residents", 
     xlab = "",
     ylab = "")
abline(v = mean(population), col="red", lwd = 2)
abline(v = sd(population), col="green", lwd = 2)

hist(sample, main = "Distribution of Hourly salary \n from one random sample (n=1000)", 
     xlab = "",
     ylab = "")
abline(v = mean(sample), col="red", lwd = 2)
abline(v = sd(sample), col="green", lwd = 2)

hist(means, main = "Sampling distribution of means \n of 100 random samples (n=1000) \n derived from population distribution", 
     xlab = "",
     ylab = "")
abline(v = mean(means), col="red", lwd = 2)
abline(v = sd(means), col="green", lwd = 2)




## ---- echo=FALSE,out.width="60%",  fig.align = 'center'-----------------------
par(mfrow=c(3,3))

means_list = c() #We will save means of the samples into a vector to use it later
sample_list = c()
for (s in 1:1000) {
  
  x = rchisq(1, 10, 2) #Draw simple random sample
  means_list[s] = mean(x) #Get the mean of this sample, and save it in separate list
  sample_list[s] = list(x)
  
}
hist(means_list, main="n=1", xlab = "", ylab ="")
mtext(paste("µ=", round(mean(means_list), digits=2),"σ=", round(sd(means_list), digits=2)), side= 3)

means_list = c() #We will save means of the samples into a vector to use it later
sample_list = c()
for (s in 1:1000) {
  
  x = rchisq(5, 10, 2) #Draw simple random sample
  means_list[s] = mean(x) #Get the mean of this sample, and save it in separate list
  sample_list[s] = list(x)
  
}
hist(means_list, main="n=5", xlab = "", ylab ="")
mtext(paste("µ=", round(mean(means_list), digits=2),"σ=", round(sd(means_list), digits=2)), side= 3)

means_list = c() #We will save means of the samples into a vector to use it later
sample_list = c()
for (s in 1:1000) {
  
  x = rchisq(10, 10, 2) #Draw simple random sample
  means_list[s] = mean(x) #Get the mean of this sample, and save it in separate list
  sample_list[s] = list(x)
  
}
hist(means_list, main="n=10", xlab = "", ylab ="")
mtext(paste("µ=", round(mean(means_list), digits=2),"σ=", round(sd(means_list), digits=2)), side= 3)

means_list = c() #We will save means of the samples into a vector to use it later
sample_list = c()
for (s in 1:1000) {
  
  x = rchisq(30, 10, 2) #Draw simple random sample
  means_list[s] = mean(x) #Get the mean of this sample, and save it in separate list
  sample_list[s] = list(x)
  
}
hist(means_list, main="n=30", xlab = "", ylab ="")
mtext(paste("µ=", round(mean(means_list), digits=2),"σ=", round(sd(means_list), digits=2)), side= 3)


means_list = c() #We will save means of the samples into a vector to use it later
sample_list = c()
for (s in 1:1000) {
  
  x = rchisq(50, 10, 2) #Draw simple random sample
  means_list[s] = mean(x) #Get the mean of this sample, and save it in separate list
  sample_list[s] = list(x)
  
}
hist(means_list, main="n=50", xlab = "", ylab ="")
mtext(paste("µ=", round(mean(means_list), digits=2),"σ=", round(sd(means_list), digits=2)), side= 3)

means_list = c() #We will save means of the samples into a vector to use it later
sample_list = c()
for (s in 1:1000) {
  
  x = rchisq(100, 10, 2) #Draw simple random sample
  means_list[s] = mean(x) #Get the mean of this sample, and save it in separate list
  sample_list[s] = list(x)
  
}
hist(means_list, main="n=100", xlab = "", ylab ="")
mtext(paste("µ=", round(mean(means_list), digits=2),"σ=", round(sd(means_list), digits=2)), side= 3)

means_list = c() #We will save means of the samples into a vector to use it later
sample_list = c()
for (s in 1:1000) {
  
  x = rchisq(300, 10, 2) #Draw simple random sample
  means_list[s] = mean(x) #Get the mean of this sample, and save it in separate list
  sample_list[s] = list(x)
  
}
hist(means_list, main="n=300", xlab = "", ylab ="")
mtext(paste("µ=", round(mean(means_list), digits=2),"σ=", round(sd(means_list), digits=2)), side= 3)

means_list = c() #We will save means of the samples into a vector to use it later
sample_list = c()
for (s in 1:1000) {
  
  x = rchisq(600, 10, 2) #Draw simple random sample
  means_list[s] = mean(x) #Get the mean of this sample, and save it in separate list
  sample_list[s] = list(x)
  
}
hist(means_list, main="n=600", xlab = "", ylab ="")
mtext(paste("µ=", round(mean(means_list), digits=2),"σ=", round(sd(means_list), digits=2)), side= 3)

means_list = c() #We will save means of the samples into a vector to use it later
sample_list = c()
for (s in 1:1000) {
  
  x = rchisq(1000, 10, 2) #Draw simple random sample
  means_list[s] = mean(x) #Get the mean of this sample, and save it in separate list
  sample_list[s] = list(x)
  
}
hist(means_list, main="n=1000", xlab = "", ylab ="")
mtext(paste("µ=", round(mean(means_list), digits=2),"σ=", round(sd(means_list), digits=2)), side= 3)

mtext("Sampling Distributions of means from random samples (µ=12,σ=5)", 
      side = 3,
      line = -1,
      outer = TRUE)

## ---- echo=FALSE,out.width="60%",  fig.align = 'center'-----------------------
population = rchisq(1000000, 10, 2)
sample = sample(population, 1000)
means = c()
for (i in 1:100) {
  
  sampl = sample(population, 1000)
  means[i] = mean(sampl)

}
par(mfrow=c(1,2))

hist(population, 
     main = "Original population distribution", 
     xlab = "",
     ylab = "")
abline(v = mean(population), col="red", lwd = 2)
abline(v = sd(population), col="green", lwd = 2)

hist(means, main = "Sampling distribution of means \n of 100 random samples (n=1000) \n derived from population distribution", 
     xlab = "",
     ylab = "")
abline(v = mean(means), col="red", lwd = 2)
abline(v = sd(means), col="green", lwd = 2)




## -----------------------------------------------------------------------------
load('HW3.RData')

## -----------------------------------------------------------------------------
x = auto.sampler(10000)

## ---- eval = F----------------------------------------------------------------
#  means = auto.sampler(n=sample size, samples = number of samples)

