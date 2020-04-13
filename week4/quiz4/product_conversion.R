F <- c(+1, -1, -1, +1)
T <- c(-1, +1, -1, +1)
S <- F*T

y <- c(91, 78, 85, 90)

model <- lm(y ~ F*T*S)
summary(model)


F <- c(-1, +1, +1, -1)
T <- c(-1, +1, -1, +1)
S <- -F*T

y <- c(80, 93, 93, 87)

model <- lm(y ~ F*T*S)
summary(model)