## ----setup, include=FALSE, warning=F------------------------------------------
knitr::knit_hooks$set(purl = knitr::hook_purl)
knitr::opts_chunk$set(echo = TRUE)
library(knitr)
library(kableExtra)
library(tidyverse)


## -----------------------------------------------------------------------------
x = rnorm(n=1000, mean=5, sd = 10)
mean(x)
sd(x)

## ---- out.width="65%", fig.align = 'center'-----------------------------------
x2 = rnorm(1000, 5, 10)
mean(x2)
sd(x2)

## ---- out.width="50%", fig.align = 'center'-----------------------------------
means_list = c() #We will save means of the samples into a vector to use it later
sample_list = c()
for (s in 1:1000) {
  
  x = rnorm(1000, 5, 10) #Draw simple random sample
  means_list[s] = mean(x) #Get the mean of this sample, and save it in separate list
  sample_list[s] = list(x)
  
}

hist(means_list, main="Sampling distribution of sample means", xlab = "")


## ---- echo = F----------------------------------------------------------------

stats <- data.frame(matrix(ncol=5,
                           nrow=2, 
                           dimnames=list(NULL, 
                                        c('Property',
                                          'Sample 1', 
                                          'Sample 100',
                                          'Sample 599', 
                                          'Mean of 1000\n sample means'))))

stats[1, 1] = "Mean"
stats[2, 1] = "SD"
stats[1, 2] = round(mean(sample_list[[1]]), digits = 2)
stats[2, 2] = round(sd(sample_list[[1]]), digits = 2)
stats[1, 3] = round(mean(sample_list[[100]]), digits = 2)
stats[2, 3] = round(sd(sample_list[[100]]), digits = 2)
stats[1, 4] = round(mean(sample_list[[1]]), digits = 2)
stats[2, 4] = round(sd(sample_list[[599]]), digits = 2)
stats[1, 5] = round(mean(means_list), digits = 2)
stats[2, 5] = round(sd(means_list), digits = 2)

library(kableExtra)
knitr::kable(stats, col.names = gsub("[.]", " ", names(stats)))


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

## ---- echo = F, out.width="50%",  fig.align = 'center'------------------------
set.seed(121212)
means_list = c() #We will save means of the samples into a vector to use it later
sample_list = c()
for (s in 1:1000) {
  
  x = rbinom( 2000, 1, 0.49) #Draw simple random sample
  means_list[s] = sd(x) #Get the mean of this sample, and save it in separate list
  sample_list[s] = list(x)
  
}

dx <- density(means_list, bw = 1)
# Plot the density without histogram
plot(dx, lwd = 2, col = "black",
     main = " ", xaxt ="n", xlab = "",  ylab = "")
abline(v = mean(means_list), col="red", lwd = 2)

axis(1, at = round(mean(means_list), 4))



## ---- echo=FALSE,out.width="50%",  fig.align = 'center'-----------------------
set.seed(121212)
# means_list= c()
# for (s in 1:1000) {
#   
#   x = rbinom( 2000, 1, 0.47) #Draw simple random sample
#   means_list[s] = mean(x) #Get the mean of this sample, and save it in separate list
#   
# }

x = rnorm( 2000, 0.47, 0.01) #Draw simple random sample
y = rnorm( 2000, 0.49, 0.01) #Draw simple random sample

dx <- density(x, bw = 0.01)
dy <- density(y, bw = 0.01)
# Plot the density without histogram
plot(dx, lwd = 2, col = "red",
     main = " ", xaxt ="n", xlab = "",  ylab = "", 
     ylim = c(0, 40))
labels = round(x, 2)
abline(v = mean(x), col="red", lwd = 2)
abline(v = mean(y), col="blue", lwd = 2)

axis(1, at = round(c(mean(x), mean(y)), 3))
lines(dy, col = "blue")

text(mean(y)+sd(y),30, "Population\nMean",col = "blue", pos = 3)
text(mean(x)-sd(x),30, "Sample\nMean",col = "red", pos = 3)



## ---- echo=FALSE,out.width="50%",  fig.align = 'center'-----------------------

set.seed(121212)

x = rnorm( 2000, 0.47, 0.01) #Draw simple random sample
dx <- density(x, bw = 0.01)
l <- min(which(dx$x >= round(mean(x)-3*sd(x), 3)))
h <- max(which(dx$x < round(mean(x)+3*sd(x), 3)))

plot(dx, lwd = 2, col = "black",
     main = "Sampling distribution", xaxt ="n", xlab = "",  ylab = "", ylim = c(0, 40))

axis(1, at =round(mean(x)-3*sd(x), 3))
axis(1, at =round(mean(x)+3*sd(x), 3))
axis(1, at = round(c(mean(x), mean(y)), 3))
polygon(c(dx$x[c(l, l:h, h)]),
        c(0, dx$y[l:h], 0),
        col = "lightblue")

abline(v = mean(x), col="red", lwd = 2)
abline(v = mean(y), col="blue", lwd = 2)
text(mean(y)-sd(y),0.0025, "Population\nMean",col = "blue", pos = 3)
text(mean(x)-sd(x),0.0025, "Sample\nMean",col = "red", pos = 3)
text(mean(x)+4*sd(x),10, "The shaded area\nrepresents 95% area\nunder the curve",col = "black", pos = 3)


## ---- echo=FALSE,out.width="50%",  fig.align = 'center'-----------------------

set.seed(121212)

x = rnorm( 2000, 0.55, 0.01) #Draw simple random sample
dx <- density(x, bw = 0.01)
l <- min(which(dx$x >= round(mean(x)-3*sd(x), 3)))
h <- max(which(dx$x < round(mean(x)+3*sd(x), 3)))

plot(dx, lwd = 2, col = "black",
     main = "Sampling Distribution", xaxt ="n", xlab = "",  ylab = "", ylim = c(0, 40))

axis(1, at =round(c(mean(x)-3*sd(x),mean(x)+3*sd(x)) , 3))
axis(1, at = round(c(mean(x), mean(y)), 3))
polygon(c(dx$x[c(l, l:h, h)]),
        c(0, dx$y[l:h], 0),
        col = "lightblue")

abline(v = mean(x), col="red", lwd = 2)
abline(v = mean(y), col="blue", lwd = 2)
text(mean(y)+sd(y),0.0025, "Population\nMean",col = "black", pos = 3)
text(mean(x)+sd(x),0.0025, "Sample\nMean",col = "black", pos = 3)
text(mean(x)+4*sd(x),10, "The shaded area\nrepresents 95% area\nunder the curve",col = "black", pos = 3)


## ---- echo=FALSE,out.width="50%",  fig.align = 'center'-----------------------

set.seed(121212)

x = rnorm( 2000, 0.47, 0.01) #Draw simple random sample
dx <- density(x, bw = 0.01)
l <- min(which(dx$x >= round(mean(x)-3*sd(x), 3)))
h <- max(which(dx$x < round(mean(x)+3*sd(x), 3)))

plot(dx, lwd = 2, col = "black",
     main = "Sampling Distribution", xaxt ="n", xlab = "",  ylab = "", ylim = c(0, 40))

axis(1, at =round(mean(x)-3*sd(x), 3))
axis(1, at =round(mean(x)+3*sd(x), 3))
axis(1, at = round(c(mean(x), mean(y)), 3))
polygon(c(dx$x[c(l, l:h, h)]),
        c(0, dx$y[l:h], 0),
        col = "lightblue")

abline(v = mean(x), col="red", lwd = 2)
abline(v = mean(y), col="blue", lwd = 2)
text(mean(y)-sd(y),0.0025, "Population\nMean",col = "black", pos = 3)
text(mean(x)-sd(x),0.0025, "Sample\nMean",col = "black", pos = 3)
text(mean(x)+4*sd(x),15, "The shaded area\nrepresents 95% area\nunder the curve",col = "black", pos = 3)


## ---- echo=T,out.width="50%",  fig.align = 'center'---------------------------
set.seed(123)
x_sampl = rbinom( 1000, 1, 0.49) #First, let's draw random sample of Americans
z = 1.96 #Critical values to construct 95%CI


## ---- echo =F-----------------------------------------------------------------
set.seed(123)
y = rnorm( 1000, 0.47, sd(x_sampl)/sqrt(1000)) #Draw simple random sample
x = rnorm( 1000, mean(x_sampl), sd(x_sampl)/sqrt(1000)) #Draw sampling distribution based on sample values

## -----------------------------------------------------------------------------
mean(x_sampl) #Sample Mean
sd(x_sampl)/sqrt(1000) #Standard Error
mean(x_sampl)+z*(sd(x_sampl)/sqrt(1000)) #Upper bound of 95%CI
mean(x_sampl)-z*(sd(x_sampl)/sqrt(1000)) #Lower  bound of 95%CI

## ---- echo=F,out.width="50%",  fig.align = 'center'---------------------------
se <- z*(sd(x_sampl)/sqrt(1000))
dx <- density(x, bw = 0.01)
l <- min(which(dx$x >= round(mean(x)-se, 3)))
h <- max(which(dx$x < round(mean(x)+se, 3)))

plot(dx, lwd = 2, col = "black",
     main = "Sampling Distribution", xaxt ="n", xlab = "",  ylab = "")

axis(1, at =round(c(mean(x_sampl)-se, mean(x_sampl), mean(x_sampl)+se), 3))
polygon(c(dx$x[c(l, l:h, h)]),
        c(0, dx$y[l:h], 0),
        col = "lightblue")

abline(v = mean(x_sampl), col="red", lwd = 2)
abline(v = mean(y), col="blue", lwd = 2)
text(mean(y)-1.1*sd(y),14, "Population\nMean",col = "black", pos = 3)
text(mean(x_sampl)+0.4*se,0.0025, "Sample\nMean",col = "black", pos = 3)
text(mean(x_sampl)+2*se,10, "The shaded area\nrepresents 95% area\nunder the curve",col = "black", pos = 3)


## ---- eval = T, echo = F------------------------------------------------------
# The function 'plot.std.normal' draws a standard normal distribution.
plot.std.normal <- function(){
  plot(c(-4,4),c(0,0.4),bty='l',xlab='z',ylab='Density',yaxs='i',xaxs='i')
  x <- seq(-4,4,length.out=500)
  polygon(c(x[1],x,x[length(x)]),c(0,dnorm(x),0),col='lightblue',border='black')
}

# The function 'shade.std.normal' shades in the area between an upper bound 'ub'
# and a lower bound 'lb'.
# To shade all the way in either direction, just omit the upper bound or lower bound
# You can also supply a color for the shading
shade.std.normal <- function(lb=NA,ub=NA,col='blue', ...){
  x <- seq(max(par('usr')[1],lb,na.rm=TRUE),
           min(par('usr')[2],ub,na.rm=TRUE),length.out=500)
  polygon(c(x[1],x,x[length(x)]),c(0,dnorm(x),0),col=col,border='black')
}

# The function 'mark.z.value' adds a vertical line to mark a z value.
mark.z.value <- function(z){
  abline(v=z,lwd=2)
  text(z,.4,paste0('z = ',round(z,2)),adj=c(-.25,1))
}


## ---- eval = F----------------------------------------------------------------
#  shade.std.normal(lb=X)
#  shade.std.normal(ub=Y)
#  shade.std.normal(lb=X, ub=Y)

## ---- eval =F-----------------------------------------------------------------
#  shade.std.normal(lb=X,col=“red”) #You can change color of shaded area

## ---- eval = F----------------------------------------------------------------
#  shade.std.normal(lb=X) #lb stands for lower bound

## ---- echo = T,out.width="50%",  fig.align = 'center'-------------------------
plot.std.normal()
shade.std.normal(lb=1)

## ---- eval = F----------------------------------------------------------------
#  shade.std.normal(ub=Y) #ub stands for upper bound

## ---- echo = T,out.width="50%",  fig.align = 'center'-------------------------
plot.std.normal()
shade.std.normal(ub=1)

## ---- echo = T,out.width="50%",  fig.align = 'center', eval = F---------------
#  shade.std.normal(lb=X, ub=Y) #The shaded area will be from X to Y

## ---- echo = T,out.width="50%",  fig.align = 'center'-------------------------
plot.std.normal()
shade.std.normal(lb=-0.5, ub=1) 


## ---- eval = F----------------------------------------------------------------
#  mark.z.value(z=X) #This function marks the z-value at X

## ---- echo = T,out.width="50%",  fig.align = 'center'-------------------------
plot.std.normal()
shade.std.normal(lb=-0.5, ub=1) 
mark.z.value(z=1) 
mark.z.value(z=-0.5) 


