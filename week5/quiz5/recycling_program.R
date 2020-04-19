H <- c(-1, +1, -1, +1)
S <- c(-1, -1, +1, +1)

y <- c(200, 150, 120, 100)

model <- lm(y ~ H*S)
summary(model)