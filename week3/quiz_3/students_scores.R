D <- N <- P <- c(-1, +1)

design <- expand.grid(D = D, N = N, P = P)

D <- design$D
N <- design$N
P <- design$P

y <- c(64, 68, 72, 70, 78, 80, 82, 80)

model <- lm(y ~ D*N*P)
summary(model)

additional_experiment1 <- c(-1, -1.5 + 0.5*3, +1)
additional_experiment2 <- c(-1, -1.5 + 0.5*2, +1)

# Add two additional experiments
design <- rbind(design, additional_experiment1)
design <- rbind(design, additional_experiment2)

print(design)

D <- design$D
N <- design$N
P <- design$P

print(design)

# Add two additional results
y <- c(y, c(84, 86))

print(y)

model <- lm(y ~ D*N*P)
summary(model)
paretoPlot(model)
