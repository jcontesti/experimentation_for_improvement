R <- c(-1, +1, -1, +1)
F <- c(-1, -1, +1, +1)
P <- R*F

y <- c(1, 0.75, 2, 1.25)

model <- lm(y ~ A*B*C)
summary(model)