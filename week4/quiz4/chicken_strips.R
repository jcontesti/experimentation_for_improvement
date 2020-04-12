library(pid)

D <- R <- P <- c(-1, +1)
design <- expand.grid(D = D, R = R, P = P)

D <- design$D
R <- design$R
P <- design$P

y <- c(3, 9, 3, 7, 3, 10, 4, 7)

mod <- lm(y ~ D*R*P)
summary(mod)
paretoPlot(mod)

# Half factorial
D <- c(-1, +1, -1, +1)
R <- c(-1, -1, +1, +1)
P <- c(+1, -1, -1, +1)

y <- c(3, 9, 3, 7)

model <- lm(y ~ D*R*P)
summary(model)