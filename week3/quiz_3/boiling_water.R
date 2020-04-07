library(pid)

A <- B <- C <- c(-1, +1)

design <- expand.grid(A = A, B = B, C = C)

A <- design$A
B <- design$B
C <- design$C

print(design)

y <- c(450,
       492,
       390,
       408,
       432,
       450,
       318,
       312)

model <- lm(y ~ A*B*C)
summary(model)


# Add additional experiments
additional_experiment1 <- c(-2, -1, -1)
design <- rbind(design, additional_experiment1)
additional_experiment1 <- c(0, +1, +1)
design <- rbind(design, additional_experiment1)
additional_experiment1 <- c(0, -1, +1)
design <- rbind(design, additional_experiment1)

A <- design$A
B <- design$B
C <- design$C

print(design)

# Add additional results
y <- c(y, c(354, 318, 420))

model <- lm(y ~ A*B*C)
summary(model)
paretoPlot(model)