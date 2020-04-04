D <- N <- P <- c(-1, +1)

design <- expand.grid(D = D, N = N, P = P)
D <- design$D
N <- design$N
P <- design$P

y <- c(64, 68, 72, 70, 78, 80, 82, 80)

model <- lm(y ~ D*N*P)
summary(model)
paretoPlot(model)