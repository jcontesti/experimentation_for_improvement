library(pid)

A <- B <- C <- c(-1, +1)
design <- expand.grid(A=A, B=B, C=C)

# The 3 factors that form the base of our design
A <- design$A
B <- design$B
C <- design$C

# These 4 factors are generated, using the trade-off table relationships
D <- A*B
E <- A*C
F <- B*C
G <- A*B*C

# These are the 8 experimental outcomes, corresponding to the 8 entries 
# in each of the vectors above
y <- c(320, 276, 306, 290, 272, 274, 290, 255)

# And finally, the linear model
mod_ff <- lm(y ~ A*B*C*D*E*F*G)

paretoPlot(mod_ff)

# Now rebuild the linear model with only the 4 important terms
mod_res4 <- lm(y ~ A*C*E*G)
paretoPlot(mod_res4)