A <- c(-1, +1, -1, +1, 0)
B <- c(-1, -1, +1, +1, 0)

y <- c(301, 280, 270, 255, 275)

model <- lm(y ~ A*B)
summary(model)