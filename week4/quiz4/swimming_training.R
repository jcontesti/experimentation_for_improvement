library(pid)

A <- B <- C <- c(-1, +1)
design <- expand.grid(A = A, B = B, C = C)

A <- design$A
B <- design$B
C <- design$C
D <- A*B
E <- A*C
F <- B*C

y <- c(325, 330, 326, 300, 272, 265, 300, 275)

mod <- lm(y ~ A*B*C*D*E*F)
summary(mod)
paretoPlot(mod)