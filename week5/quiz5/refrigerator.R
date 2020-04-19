A <- c(-1, +1, -1, +1)
B <- c(-1, -1, +1, +1)
C <- c(+1, -1, -1, +1)

y <- c(8, 3, 8, 4)

model <- lm(y ~ A*B*C)
summary(model)

# Remove B and C and add additional experiment
A <- c(A, +3) 
  
y <- c(y, -6)

model <- lm(y ~ A + I(A^2))
summary(model)