library(pid)

W <- P <- c(-1, +1)

design <- expand.grid(W = W, P = P)

W <- design$W
P <- design$P

y <- c(11, 16, 7, 9)

model <- lm(y ~ W*P)
summary(model)
paretoPlot(model)