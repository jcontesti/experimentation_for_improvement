A <- c(-1, +1, -1, +1)
B <- c(-1, -1, +1, +1)
C <- c(+1, -1, -1, +1)

y <- c(85, 92, 89, 95)

model <- lm(y ~ A*B*C)
summary(model)