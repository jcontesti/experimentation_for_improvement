P <- c(  0,  -1,  +1,  -1,  +1)
T <- c(  0,  -1,  -1,  +1,  +1)
y <- c(407, 193, 468, 310, 571)
mod.base.1 <- lm(y ~ P*T)
summary(mod.base.1)

library(pid)
contourPlot(mod.base.1, "P", "T")