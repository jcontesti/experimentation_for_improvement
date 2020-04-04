A <- c(-1, +1, -1, +1)
B <- c(-1, -1, +1, +1)

y <- c(52, 74, 62, 80)

popped_corn <- lm(y ~ A + B + A*B)
summary(popped_corn)

popped_corn2 <- lm(y ~ A*B)
summary(popped_corn2)
