D <- c(0, -1, +1, -1, +1, 0, 0, +1.41, 0, -1.41, 0)
T <- c(0, -1, -1, +1, +1, 0, -1.41, 0, 1.41, 0, 0)
y <- c(60, 49, 30, 62, 50, 56, 26, 40, 63, 57, 62)

model <- lm(y ~ D*T)
summary(model)
library(pid)
contourPlot(model)