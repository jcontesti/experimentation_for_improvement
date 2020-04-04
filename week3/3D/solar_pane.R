library(pid)
data(solar)

# First outcome
model.y1 <- lm(y1 ~ A*B*C*D, data = solar)
summary(model.y1)

# Second outcome
model.y2 <- lm(y2 ~ A*B*C*D, data = solar)
summary(model.y2)

# Optimization of both?
model.y12 <- lm(y1 + y2 ~ A*B*C*D, data = solar)
summary(model.y12)
paretoPlot(model.y12)