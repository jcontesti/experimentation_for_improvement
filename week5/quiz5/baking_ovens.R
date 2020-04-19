A <- c(-1, +1, -1, +1, 0)
B <- c(-1, -1, +1, +1, 0)

y <- c(80, 86, 82, 89, 84)

model <- lm(y ~ A*B)
summary(model)

# Next exercice

A <- c(-1, -1, +1, +1, 0)
B <- c(-1, +1, -1, +1, 0)

y <- c(93, 96, 94, 79, 95)
         
model <- lm(y ~ A*B)
summary(model)
library(pid)
contourPlot(model)