A <- c(-1, +1, -1, +1)
B <- c(-1, -1, +1, +1)

y <- c(3, 5, 4, 9)

ginger_biscuits <- lm(y ~ A*B)
summary(ginger_biscuits)
