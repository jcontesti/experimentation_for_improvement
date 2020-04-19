A <- c(-1, +1, -1, +1)
B <- c(-1, -1, +1, +1)

y <- c(39, 32, 37.5, 31.5)

model <- lm(y ~ A*B)
summary(model)

# Add additional experiments
A <- c(A, +1.8, +2.6)
B <- c(B, -1, -1)
y <- c(y, 26, 24.5)

model <- lm(y ~ A*B)
summary(model)

# Quadratic model
model <- lm(y ~ A + I(A^2))
summary(model)