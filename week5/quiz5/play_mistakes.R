P <- S <- D <- c(-1, +1)

design <- expand.grid(P = P, S = S, D = D)

P <- design$P
S <- design$S
D <- design$D

# add aditional experiment
P <- c(P, 0)
S <- c(S, 0)
D <- c(D, +1)

y <- c(15, 5, 16, 4, 15, 5, 16, 4, 12)

model <- lm(y ~ P*S*D)
summary(model)

# S and D removal and quadratic on P
model <- lm(y ~ P + I(P^2))
summary(model)
