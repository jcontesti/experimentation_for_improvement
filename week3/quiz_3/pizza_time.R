library(pid)

A <- B <- C <- c(-1, +1)

design <- expand.grid(A = A, B = B, C = C)

A <- design$A
B <- design$B
C <- design$C

y <- c(14, 16, 14, 16, 17, 21, 15, 22)

model <- lm(y ~ A*B*C)
summary(model)
paretoPlot(model)
