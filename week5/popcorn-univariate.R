
# Model for the popcorn system, ignoring factor B (oil type)

xA <- c(-1, -1,  +1,  +1)
y0 <- c(74, 76, 104, 106)
model.0 <- lm(y0 ~ xA)
summary(model.0)


# Plotting code: copy/paste and reuse this code as required
require("ggplot2")
raw_data <- data.frame(xA = xA, y = y0)
plot_data <- data.frame(xA = seq(-2, +5, 0.1))
plot_data$y <- predict(model.0, newdata=plot_data)
p <- ggplot(data=raw_data, aes(x=xA, y=y))  +  
  geom_point(size=10) +
  xlab("Coded value for x_A") + 
  scale_x_continuous(breaks=seq(-2,5,1)) +
  ylab("Outcome variable (number of unburned popcorn)") + 
  scale_y_continuous(breaks=seq(60,170,10)) +
  theme_bw() + 
  theme(axis.text=element_text(size=26), legend.position = "none") +
  theme(axis.title=element_text(face="bold", size=26))

p <- p + geom_line(data=plot_data, color="blue", size=1) 
p
#ggsave("popcorn-linear-only.pdf", width=19.2, height=10.8, units="in")

# Now build the next model, model 1: y = 91.8 + 14.9 xA - 2xA^2 
xA <- c(-1, -1,  +1, +1,  0,  +2)
y1 <- c(74, 76, 104, 106, 91, 113)
model.1 <- lm(y1 ~ xA + I(xA^2) )
summary(model.1)

predict(model.1, data.frame(xA=+1))

# Add these new model to the plot as a red line
plot_data <- data.frame(xA = seq(-1.5, +5, 0.1))
plot_data$y <- predict(model.1, newdata=plot_data)
p <- p + geom_point(aes(x=c(0), y=c(91)), shape=15, size=6)
p <- p + geom_point(aes(x=c(+2), y=c(113)), shape=17, size=6)
p <- p + geom_line(data=plot_data, color="red", size=1)
p
#ggsave("popcorn-linear-with-quadratic.pdf", units="in")

# Add the 7th and 8th point, and rebuild the model
xA <- c(-1, -1,  +1, +1,  0,   +2, +3.7, +5)
y2 <- c(74, 76, 104, 106, 91, 113,  116, 109)
model.2 <- lm(y2 ~ xA + I(xA^2))
summary(model.2)


plot_data <- data.frame(xA = seq(-1.5, +5, 0.1))
plot_data$y <- predict(model.2, newdata=plot_data)
p <- p + geom_point(aes(x=c(3.7), y=c(116)), shape=9, size=6)
p <- p + geom_point(aes(x=c(5.0), y=c(108)), shape=18, size=6)
p <- p + geom_line(data=plot_data, color="darkgreen", size=1)
p
