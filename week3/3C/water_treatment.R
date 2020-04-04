C <- T <- S <- c(-1, +1)

design <- expand.grid(C=C, T=T, S=S)
C <- design$C
T <- design$T
S <- design$S

y <- c(5, 30, 6, 33, 4, 3, 5, 4)

water_treatment <- lm(y ~ C*T*S)
summary(water_treatment)


paretoPlot(water_treatment)