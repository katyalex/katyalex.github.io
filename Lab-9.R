## ----setup, include=FALSE, warning=F------------------------------------------
knitr::knit_hooks$set(purl = knitr::hook_purl)
knitr::opts_chunk$set(echo = TRUE)
library(knitr)
library(kableExtra)
library(tidyverse)


## -----------------------------------------------------------------------------
x = rnorm(1000, 10, 2)
mean(x)

t.test(x, mu = 10, alternative = "two.sided")

## ---- echo=FALSE, out.width="55%", fig.align = 'center'-----------------------
x = rnorm(10000, 0, 1)
dx <- density(x, bw = 1)
value = 1.96

# Plot the density without histogram
plot(dx, lwd = 2, col = "black",
     main = "", xaxt ="n", xlab = "",  ylab = "", 
     xlim = c(-4,4 ), ylim = c(0, 0.3))

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
text(mean(x), 0.1, "α=0.05",col = "black", pos = 3)
text(mean(x)+1.9, 0.1, "p-value (α) represents\nthe total area\nunder two tails",col = "black", pos = 3)



## ---- echo=FALSE, out.width="55%", fig.align = 'center'-----------------------
x = rnorm(10000, 0, 1)
dx <- density(x, bw = 1)
value = 2.83

# Plot the density without histogram
plot(dx, lwd = 2, col = "black",
     main = "", xaxt ="n", xlab = "",  ylab = "", 
     xlim = c(-4,4 ), ylim = c(0, 0.3))

axis(1, at = value, labels =paste("z=",value,"\np-value = 0.00232", sep=""))
axis(1, at = -value, labels ="p-value = 0.00232")
axis(1, at = 0, labels ="H0: µ=0")

polygon(c(dx$x[dx$x >= value ], value),
        c(dx$y[dx$x >= value ], 0),
        col = "slateblue1",
        border = 1)
polygon(c(dx$x[dx$x <= -value ], -value),
        c(dx$y[dx$x <= -value ], 0),
        col = "slateblue1",
        border = 1)

abline(v = mean(x), col="darkblue", lwd = 3)
# text(mean(x), 0.1, "α=0.05",col = "black", pos = 3)
text(mean(x)+1.9, 0.1, "p-value represents\nthe total area\nunder two tails\np-value = 0.00232*2 = 0.0047",col = "black", pos = 3)



## ---- echo=FALSE, out.width="55%", fig.align = 'center'-----------------------
x = rnorm(10000, 0, 1)
dx <- density(x, bw = 1)
value = 1.35

# Plot the density without histogram
plot(dx, lwd = 2, col = "black",
     main = "", xaxt ="n", xlab = "",  ylab = "", 
     xlim = c(-4,4 ), ylim = c(0, 0.3))

axis(1, at = value, labels =paste("z=",value,"\np-value = 0.0885", sep=""))
axis(1, at = -value, labels ="p-value = 0.0885")
axis(1, at = 0, labels ="H0: µ=0")

polygon(c(dx$x[dx$x >= value ], value),
        c(dx$y[dx$x >= value ], 0),
        col = "slateblue1",
        border = 1)
polygon(c(dx$x[dx$x <= -value ], -value),
        c(dx$y[dx$x <= -value ], 0),
        col = "slateblue1",
        border = 1)

abline(v = mean(x), col="darkblue", lwd = 3)
# text(mean(x), 0.1, "α=0.05",col = "black", pos = 3)
text(mean(x)+1.9, 0.1, "p-value represents\nthe total area\nunder two tails\np-value = 0.0885*2 = 0.177",col = "black", pos = 3)



