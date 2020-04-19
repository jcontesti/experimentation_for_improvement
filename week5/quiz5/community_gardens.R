P <- c(-1, +1, -1, +1)
T <- c(-1, -1, +1, +1)

y <- c(12, 5, 13, 6)

model <- lm(y ~ P*T)
summary(model)

# Remove T and add experiments
P <- c(P, 0)
y <- c(y, 8)

model <- lm(y ~ P + I(P^2))
summary(model)
