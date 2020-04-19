L <- c(-1, +1, -1, +1)
N <- c(-1, -1, +1, +1)

y <- c(85, 70, 50, 40)

model <- lm(y ~ L*N)
summary(model)