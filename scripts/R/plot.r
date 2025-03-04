# Generate the data
data <- scan("speedratios.csv")
x <- 1:length(data)
title <- "Scenario 1"
maxdata <- max(data) + (mean(data)/4)
#y <- rep(1,length(data))
attach(mtcars)
# Create the plot
jpeg(file="Rplots.jpg")
plot(x, data, ylim=c(0,maxdata),type="l", col = 'blue',main = title,xlab="Frame Report Number",ylab="Execution speed ratio (times x realtime speed)",cex.lab=1.25, cex.main=1.25, cex.axis=1.25);
abline(h=1,col="red", lwd=2);
legend('topleft', legend = c('simulation', 'realtime'), col = c('blue', 'red'), lty = 1)
dev.off()
test_condition<- data <= median(data) & mean(data) >= data
below_median_mean <- data[test_condition]
print("The average value of execution speed ratios during UE connection is:")
mean(below_median_mean)
print("The min value of execution speed ratios is:")
min(data)
print("The standard deviation of execution speed ratios during UE conneciton is:")
sd(below_median_mean)
