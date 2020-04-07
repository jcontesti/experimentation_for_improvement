library(pid)

A <- B <- C <- c(-1, +1)

design <- expand.grid(A = A, B = B, C = C)

A <- design$A
B <- design$B
C <- design$C

print(design)

y <- c(39, 
       35, 
       40, 
       41, 
       40, 
       38, 
       41, 
       42)

model <- lm(y ~ A*B*C)
summary(model)
paretoPlot(model)

additional_experiment <- c(0, 0, 0)

# Add additional experiment
design <- rbind(design, additional_experiment)

A <- design$A
B <- design$B
C <- design$C

print(design)

# Add additional result
y <- c(y, 40.5)

model <- lm(y ~ A*B*C)
summary(model)
paretoPlot(model)