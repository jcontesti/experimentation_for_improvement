S <- c(-1, +1, -1, +1)
V <- c(-1, -1, +1, +1)

y <- c(4, 5, 12, 13)

# add 5th experiment
S <- c(S, 0)
V <- c(V, 0)
y <- c(y, 8)

model <- lm(y ~ S*V)
summary(model)

# without S and additional experiment
V <- c(V, +2)
y <- c(y, 20)

model <- lm(y ~ V)
summary(model)

# with quadratic term
model <- lm(y ~ V + I(V^2))
summary(model)