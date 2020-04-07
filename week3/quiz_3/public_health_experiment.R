H <- I <- S <- c(-1, +1)

design <- expand.grid(H = H, I = I, S = S)
H <- design$H
I <- design$I
S <- design$S

y <- c(30, 15, 32, 18, 24, 10, 27, 14)

model <- lm(y ~ H*I*S)
summary(model)
paretoPlot(model)