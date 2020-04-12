A <- c(-1, +1, -1, +1)
B <- c(-1, -1, +1, +1)
C <- c(+1, -1, -1, +1)

y <- c(25, 32, 29, 35)

model <- lm(y ~ A*B*C)
summary(model)