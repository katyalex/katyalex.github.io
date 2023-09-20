## ----setup, include=FALSE, warning=F------------------------------------------
knitr::knit_hooks$set(purl = knitr::hook_purl)
knitr::opts_chunk$set(echo = TRUE)
library(knitr)
library(kableExtra)
library(tidyverse)


## ---- eval = F----------------------------------------------------------------
#  ?quantile

## ---- echo=FALSE, out.width="50%", fig.align = 'center'-----------------------
par(mfrow=c(1,2))
hist(rbeta(10000,5,2), main = "Left-skewed", xlab = "")
hist(rbeta(10000,2,5), main = "Right-skewed", xlab = "")

## ---- echo=FALSE, out.width="55%", fig.align = 'center'-----------------------
x = rnorm(10000, 0, 1)
dx <- density(x, bw = 1)
# Plot the density without histogram
plot(dx, lwd = 2, col = "black",
     main = "Normal Distribution", xaxt ="n", xlab = "",  ylab = "", 
     xlim = c(-4,4 ), ylim = c(0, 0.4))
axis(1, at = c(-3, -2, -1,0, 1, 2, 3), labels = c("µ-3σ","µ-2σ", "µ-σ","µ", "µ+σ", "µ+2σ", "µ+3σ"))
abline(v = mean(x), col="black", lwd = 0.5)

abline(v = mean(x)+sd(x), col="green", lwd = 3)
abline(v = mean(x)-sd(x), col="green", lwd = 3)
abline(v = mean(x)+2*sd(x), col="red", lwd = 3)
abline(v = mean(x)-2*sd(x), col="red", lwd = 3)
abline(v = mean(x)+3*sd(x), col="blue", lwd = 3)
abline(v = mean(x)-3*sd(x), col="blue", lwd = 3)

text(mean(x), 0.3, "σ+σ = 68%",col = "green", pos = 3)
text(mean(x), 0.18, "2σ+2σ = 95%",col = "red", pos = 3)
text(mean(x), 0.1, "3σ+3σ = 99.7%",col = "blue", pos = 3)


## ---- echo=FALSE, out.width="65%", fig.align = 'center'-----------------------
x = rnorm(10000, 0, 1)
dx <- density(x, bw = 1)
# Plot the density without histogram
plot(dx, lwd = 2, col = "blue",
     main = "Standard Normal Distribution", xlab = "", ylab = "", 
     xlim = c(- 10, 10), ylim = c(0, 0.4))
abline(v = 0, col="red", lwd = 3)
mtext("Mean = 0, SD = 1", side= 3)

## ---- echo=FALSE, out.width="65%", fig.align = 'center'-----------------------
x = rnorm(10000, 0, 1.5)
dx <- density(x, bw = 1)
# Plot the density without histogram
plot(dx, lwd = 2, col = "blue",
     main = "Normal Distribution", xlab = "", ylab = "", 
     xlim = c(- 10, 10), ylim = c(0, 0.4))
abline(v = 0, col="red", lwd = 3)
mtext("Mean = 0, SD = 1.5", side= 3)

## ---- echo=FALSE, out.width="65%", fig.align = 'center'-----------------------
x = rnorm(10000, 0, 2)
dx <- density(x, bw = 1)
# Plot the density without histogram
plot(dx, lwd = 2, col = "blue",
     main = "Normal Distribution", xlab = "", ylab = "", 
     xlim = c(- 10, 10), ylim = c(0, 0.4))
abline(v = 0, col="red", lwd = 3)
mtext("Mean = 0, SD = 2", side= 3)

## ---- echo=FALSE, out.width="65%", fig.align = 'center'-----------------------
x = rnorm(10000, 0, 4)
dx <- density(x, bw = 1)
# Plot the density without histogram
plot(dx, lwd = 2, col = "blue",
     main = "Normal Distribution", xlab = "", ylab = "", 
     xlim = c(- 10, 10), ylim = c(0, 0.4))
abline(v = 0, col="red", lwd = 3)
mtext("Mean = 0, SD = 4", side= 3)

## ---- echo=FALSE,out.width="60%",  fig.align = 'center'-----------------------
par(mfrow=c(2,2))
x = rnorm(10000, 0, 1)
dx <- density(x, bw = 1)
# Plot the density without histogram
plot(dx, lwd = 2, col = "blue",
     main = "", xlab = "", ylab = "", 
     xlim = c(- 10, 10), ylim = c(0, 0.4))
abline(v = 0, col="red", lwd = 3)
mtext("Mean = 0, SD = 1", side= 3)

x = rnorm(10000, 0, 1.5)
dx <- density(x, bw = 1)
# Plot the density without histogram
plot(dx, lwd = 2, col = "blue",
     main = "", xlab = "", ylab = "", 
     xlim = c(- 10, 10), ylim = c(0, 0.4))
abline(v = 0, col="red", lwd = 3)
mtext("Mean = 0, SD = 1.5", side= 3)

x = rnorm(10000, 0, 2)
dx <- density(x, bw = 1)
# Plot the density without histogram
plot(dx, lwd = 2, col = "blue",
     main = "", xlab = "", ylab = "", 
     xlim = c(- 10, 10), ylim = c(0, 0.4))
abline(v = 0, col="red", lwd = 3)
mtext("Mean = 0, SD = 2", side= 3)

x = rnorm(10000, 0, 4)
dx <- density(x, bw = 1)
# Plot the density without histogram
plot(dx, lwd = 2, col = "blue",
     main = "", xlab = "", ylab = "", 
     xlim = c(- 10, 10), ylim = c(0, 0.4))
abline(v = 0, col="red", lwd = 3)
mtext("Mean = 0, SD = 4", side= 3)


## ---- echo=FALSE, out.width="65%", fig.align = 'center'-----------------------
x = rnorm(10000, 0, 1)
dx <- density(x, bw = 1)
# Plot the density without histogram
plot(dx, lwd = 2, col = "blue",
     main = "Standard Normal Distribution", xlab = "", ylab = "", 
     xlim = c(- 10, 10), ylim = c(0, 0.4))
abline(v = 0, col="red", lwd = 3)
mtext("Mean = 0, SD = 1", side= 3)

## ---- echo=FALSE, out.width="65%", fig.align = 'center'-----------------------
x = rnorm(10000, 1.5, 1)
dx <- density(x, bw = 1)
# Plot the density without histogram
plot(dx, lwd = 2, col = "blue",
     main = "Normal Distribution", xlab = "", ylab = "", 
     xlim = c(- 10, 10), ylim = c(0, 0.4))
abline(v = 1.5, col="red", lwd = 3)
mtext("Mean = 1.5, SD = 1", side= 3)

## ---- echo=FALSE, out.width="65%", fig.align = 'center'-----------------------
x = rnorm(10000, 4, 1)
dx <- density(x, bw = 1)
# Plot the density without histogram
plot(dx, lwd = 2, col = "blue",
     main = "Normal Distribution", xlab = "", ylab = "", 
     xlim = c(- 10, 10), ylim = c(0, 0.4))
abline(v = 4, col="red", lwd = 3)
mtext("Mean = 4, SD = 1", side= 3)

## ---- echo=FALSE, out.width="65%", fig.align = 'center'-----------------------
x = rnorm(10000, -1.5, 1)
dx <- density(x, bw = 1)
# Plot the density without histogram
plot(dx, lwd = 2, col = "blue",
     main = "Normal Distribution", xlab = "", ylab = "", 
     xlim = c(- 10, 10), ylim = c(0, 0.4))
abline(v = -1.5, col="red", lwd = 3)
mtext("Mean = -1.5, SD = 1", side= 3)

## ---- echo=FALSE, out.width="65%", fig.align = 'center'-----------------------
x = rnorm(10000, -4, 1)
dx <- density(x, bw = 1)
# Plot the density without histogram
plot(dx, lwd = 2, col = "blue",
     main = "Normal Distribution", xlab = "", ylab = "", 
     xlim = c(- 10, 10), ylim = c(0, 0.4))
abline(v = -4, col="red", lwd = 3)
mtext("Mean = -4, SD = 1", side= 3)

## ---- echo=FALSE,out.width="60%",  fig.align = 'center'-----------------------
par(mfrow=c(2,2))
x = rnorm(10000, 1.5, 1)
dx <- density(x, bw = 1)
# Plot the density without histogram
plot(dx, lwd = 2, col = "blue",
     main = "", xlab = "", ylab = "", 
     xlim = c(- 10, 10), ylim = c(0, 0.4))
abline(v = 1.5, col="red", lwd = 3)
mtext("Mean = 1.5, SD = 1", side= 3)

x = rnorm(10000, 4, 1)
dx <- density(x, bw = 1)
# Plot the density without histogram
plot(dx, lwd = 2, col = "blue",
     main = "", xlab = "", ylab = "", 
     xlim = c(- 10, 10), ylim = c(0, 0.4))
abline(v = 4, col="red", lwd = 3)
mtext("Mean = 4, SD = 1", side= 3)

x = rnorm(10000, -1.5, 1)
dx <- density(x, bw = 1)
# Plot the density without histogram
plot(dx, lwd = 2, col = "blue",
     main = "", xlab = "", ylab = "", 
     xlim = c(- 10, 10), ylim = c(0, 0.4))
abline(v = -1.5, col="red", lwd = 3)
mtext("Mean = -1.5, SD = 1", side= 3)

x = rnorm(10000, -4, 1)
dx <- density(x, bw = 1)
# Plot the density without histogram
plot(dx, lwd = 2, col = "blue",
     main = "", xlab = "", ylab = "", 
     xlim = c(- 10, 10), ylim = c(0, 0.4))
abline(v = -4, col="red", lwd = 3)
mtext("Mean = -4, SD = 1", side= 3)


## ---- echo=FALSE,out.width="60%",  fig.align = 'center'-----------------------
par(mfrow=c(1,2))
x = rnorm(10000, 4, 4)
dx <- density(x, bw = 1)
# Plot the density without histogram
plot(dx, lwd = 2, col = "blue",
     main = "Normal Distribution", xlab = "", ylab = "", 
     xlim = c(- 10, 20), ylim = c(0, 0.4))
abline(v = 4, col="red", lwd = 3)
# text(x = 2, y = 3,                # Add text element
#      "$z = \frac{x-µ}{σ}$")
text(x = 2, y = 3,                # Add text element
     "This is my text")

mtext("Mean = 4, SD = 4", side= 3)

x = rnorm(10000, 0, 1)
dx <- density(x, bw = 1)
# Plot the density without histogram
plot(dx, lwd = 2, col = "blue",
     main = "Standard Normal Distribution", xlab = "", ylab = "", 
     xlim = c(- 10, 10), ylim = c(0, 0.4))
abline(v = 0, col="red", lwd = 3)
mtext("Mean = 1, SD = 1", side= 3)




## ---- echo=FALSE,out.width="60%",  fig.align = 'center', warning=F------------
library(readxl)
library(kableExtra)

ztab = read_excel("ztable_pos.xlsx")
ztab$Z = as.numeric(ztab$Z)
colnames(ztab) = c("Z", "0.00", "0.01", "0.02", "0.03", "0.04", "0.05", "0.06","0.07", "0.08", "0.09")

ztab[41:44, ] %>%
  kbl(digits=4) %>%
   kable_classic(full_width = F, html_font = "Cambria")


## ---- echo=FALSE,out.width="60%",  fig.align = 'center'-----------------------
x = rnorm(10000, 0, 1)
dx <- density(x, bw = 1)
value = -0.85

# Plot the density without histogram
plot(dx, lwd = 2, col = "black",
     main = "Normal Distribution", xaxt ="n", xlab = "",  ylab = "", 
     xlim = c(-4,4 ), ylim = c(0, 0.4))
axis(1, at = value, labels =paste("z=",value, sep=""))
polygon(c(dx$x[dx$x <= value ], value),
        c(dx$y[dx$x <= value ], 0),
        col = "slateblue1",
        border = 1)

## ---- echo=FALSE,out.width="60%",  fig.align = 'center', warning=F------------
df<-ztab[41:44, ]

df %>%
  kable(booktabs = T) %>%
  kable_styling(full_width = F, html_font = "Cambria") %>%
  row_spec(2, bold = TRUE, italic = F, color = 'red') %>%                 kable_classic(full_width = F, html_font = "Cambria")



## ---- echo=FALSE,out.width="60%",  fig.align = 'center'-----------------------
x = rnorm(10000, 0, 1)
dx <- density(x, bw = 1)
value = 0.34

# Plot the density without histogram
plot(dx, lwd = 2, col = "black",
     main = "Normal Distribution", xaxt ="n", xlab = "",  ylab = "", 
     xlim = c(-4,4 ), ylim = c(0, 0.4))

axis(1, at = value, labels =paste("z=",value, sep=""))
polygon(c(dx$x[dx$x <= value ], value),
        c(dx$y[dx$x <= value ], 0),
        col = "slateblue1",
        border = 1)
abline(v = mean(x), col="black", lwd = 0.5)


## ---- echo=FALSE,out.width="60%",  fig.align = 'center', warning=F------------

df<-ztab[53:55, ]

df %>%
  kable(booktabs = T) %>%
  kable_styling(full_width = F, html_font = "Cambria") %>%
  row_spec(2, bold = TRUE, italic = F, color = 'red') %>%                 kable_classic(full_width = F, html_font = "Cambria")

## ---- echo=FALSE,out.width="60%",  fig.align = 'center'-----------------------
x = rnorm(10000, 0, 1)
dx <- density(x, bw = 1)
value = 2.37

# Plot the density without histogram
plot(dx, lwd = 2, col = "black",
     main = "Normal Distribution", xaxt ="n", xlab = "",  ylab = "", 
     xlim = c(-4,4 ), ylim = c(0, 0.4))

axis(1, at = value, labels =paste("z=",value, sep=""))
polygon(c(dx$x[dx$x <= value ], value),
        c(dx$y[dx$x <= value ], 0),
        col = "slateblue1",
        border = 1)
abline(v = mean(x), col="black", lwd = 0.5)


## ---- echo=FALSE,out.width="60%",  fig.align = 'center', warning=F------------

df<-ztab[73:75, ]

df %>%
  kable(booktabs = T) %>%
  kable_styling(full_width = F, html_font = "Cambria") %>%
  row_spec(2, bold = TRUE, italic = F, color = 'red') %>%                 kable_classic(full_width = F, html_font = "Cambria")

## ---- echo=FALSE,out.width="60%",  fig.align = 'center'-----------------------
x = rnorm(10000, 0, 1)
dx <- density(x, bw = 1)
value = 1.24

# Plot the density without histogram
plot(dx, lwd = 2, col = "black",
     main = "Normal Distribution", xaxt ="n", xlab = "",  ylab = "", 
     xlim = c(-4,4 ), ylim = c(0, 0.4))

axis(1, at = value, labels =paste("z=",value, sep=""))
polygon(c(dx$x[dx$x >= value ], value),
        c(dx$y[dx$x >= value ], 0),
        col = "slateblue1",
        border = 1)
abline(v = mean(x), col="black", lwd = 0.5)


## ---- echo=FALSE,out.width="40%",  fig.align = 'center'-----------------------
x = rnorm(10000, 0, 1)
dx <- density(x, bw = 1)
value = 1.24

# Plot the density without histogram
plot(dx, lwd = 2, col = "black",
     main = "Normal Distribution", xaxt ="n", xlab = "",  ylab = "", 
     xlim = c(-4,4 ), ylim = c(0, 0.4))

axis(1, at = value, labels =paste("z=",value, sep=""))
polygon(c(dx$x[dx$x >= value ], value),
        c(dx$y[dx$x >= value ], 0),
        col = "slateblue1",
        border = 1)
polygon(c(dx$x[dx$x <= value ], value),
        c(dx$y[dx$x <= value ], 0),
        col = "lightblue",
        border = 1)
abline(v = mean(x), col="black", lwd = 0.5)


## ---- echo=FALSE,out.width="60%",  fig.align = 'center', warning=F------------

df<-ztab[62:64, ]

df %>%
  kable(booktabs = T) %>%
  kable_styling(full_width = F, html_font = "Cambria") %>%
  row_spec(2, bold = TRUE, italic = F, color = 'red') %>%                 kable_classic(full_width = F, html_font = "Cambria")

## ---- echo=FALSE,out.width="70%",  fig.align = 'center'-----------------------
x = rnorm(10000, 0, 1)
dx <- density(x, bw = 1)
value = 1.24

# Plot the density without histogram
plot(dx, lwd = 2, col = "black",
     main = "", xaxt ="n", xlab = "",  ylab = "", 
     xlim = c(-4,4 ), ylim = c(0, 0.4))

axis(1, at = value, labels =paste("z=","a", sep=""))
polygon(c(dx$x[dx$x >= value ], value),
        c(dx$y[dx$x >= value ], 0),
        col = "slateblue1",
        border = 1)
polygon(c(dx$x[dx$x <= value ], value),
        c(dx$y[dx$x <= value ], 0),
        col = "lightblue",
        border = 1)
text(value+0.55, 0.025, "1-P(z<a)",col = "black", pos = 3)
text(0, 0.025, "P(z<a)",col = "black", pos = 3)
text(value, 0.3, "P(z>a) = 1-P(z<a)",col = "black", pos = 3)
mtext("Hint: P(z<a) is in your z table", side=3)

## ---- echo=FALSE,out.width="50%",  fig.align = 'center'-----------------------
x = rnorm(10000, 0, 1)
dx <- density(x, bw = 1)
value = 1.24

# Plot the density without histogram
plot(dx, lwd = 2, col = "black",
     main = "Normal Distribution", xaxt ="n", xlab = "",  ylab = "", 
     xlim = c(-4,4 ), ylim = c(0, 0.4))

axis(1, at = value, labels =paste("z=",value, sep=""))
axis(1, at = -value, labels =paste("z=",-value, sep=""))

polygon(c(dx$x[dx$x >= value ], value),
        c(dx$y[dx$x >= value ], 0),
        col = "slateblue1",
        border = 1)
polygon(c(dx$x[dx$x <= -value ], -value),
        c(dx$y[dx$x <= -value ], 0),
        col = "slateblue1",
        border = 1)

abline(v = mean(x), col="black", lwd = 0.5)

## ---- echo=FALSE,out.width="60%",  fig.align = 'center', warning=F------------

df<-ztab[37:39, ]

df %>%
  kable(booktabs = T) %>%
  kable_styling(full_width = F, html_font = "Cambria") %>%
  row_spec(2, bold = TRUE, italic = F, color = 'red') %>%                 kable_classic(full_width = F, html_font = "Cambria")

