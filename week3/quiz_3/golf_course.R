library(pid)

T <- H <- C <- D <- c(-1, +1)

design <- expand.grid(T = T, H = H, C = C, D = D)

T <- design$T
H <- design$H
C <- design$C
D <- design$D

print(design)

y <- c(288, 
       295, 
       235, 
       278, 
       300, 
       312, 
       298, 
       305, 
       265, 
       282, 
       230, 
       260, 
       292, 
       300, 
       281, 
       288)

model <- lm(y ~ T*H*C*D)
summary(model)
paretoPlot(model)