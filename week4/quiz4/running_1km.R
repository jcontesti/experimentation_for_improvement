# C = AB
A <- c(+1, -1, -1, +1)
B <- c(-1, +1, -1, +1)
C <- A*B

y <- c(252, 260, 300, 315)

model <- lm(y ~ A*B*C)
summary(model)

# C = -AB
A <- c(-1, +1, +1, -1)
B <- c(-1, +1, -1, +1)
C <- -A*B

y <- c(240, 270, 301, 305)

model <- lm(y ~ A*B*C)
summary(model)