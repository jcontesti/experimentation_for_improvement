N <- c(-1, +1, -1, +1)
R <- c(-1, -1, +1, +1)
T <- N*R

y1 <- c(125, 130, 120, 135)
y2 <- c(75, 100, 78, 103)

model1 <- lm(y1 ~ N*R*T)
summary(model1)

model2 <- lm(y2 ~ N*R*T)
summary(model2)

# Remove T and add experiments
N <- c(N, 0)
R <- c(R, 0)
T <- c(T, +1)

y1 <- c(y1, 128)
y2 <- c(y2, 93)

model <- lm(y1 ~ N*T)
summary(model)
