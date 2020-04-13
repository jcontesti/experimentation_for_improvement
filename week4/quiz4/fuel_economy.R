library(pid)

A <- B <- C <- c(-1, +1)
design <- expand.grid(A=A, B=B, C=C)

A <- design$A
B <- design$B
C <- design$C
D <- A*B*C # Generator D = ABC

y <- c(26, 27, 24, 26, 33, 37, 32, 33)

mod <- lm(y ~ A*B*C*D)
summary(mod)
paretoPlot(mod)