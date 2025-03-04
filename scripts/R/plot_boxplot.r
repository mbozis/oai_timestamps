options(digits=10)                                                                               
# Generate the data
data <- read.csv("scenario_14.csv")
title <- "Scenario 6"
# reformat data from list to matrix
data_matrix <- matrix(unlist(data), ncol = 2, byrow = F)
#### DL ########################
print("The mean value of DL datarate:")
mean(data_matrix[,1])
print("The max value of DL datarate:")
max(data_matrix[,1])
print("The min value of DL datarate:")
min(data_matrix[,1])
print("The standard deviation DL datarate is:")
sd(data_matrix[,1])

#### UL ########################
print("The mean value of UL datarate:")
mean(data_matrix[,2])
print("The max value of UL datarate:")
max(data_matrix[,2])
print("The min value of UL datarate:")
min(data_matrix[,2])
print("The standard deviation UL datarate is:")
sd(data_matrix[,2])

jpeg(file="RplotsDL.jpg")
boxplot(data_matrix[,1], ylim=c(min(data_matrix[,1]),max(data_matrix[,1])), col= 'red', ylab="Mbps",cex.axis=1.25,cex.lab=1.25)
legend('topleft', legend = 'Scenario 6 DL', col = 'red', lty = 1,cex=1.25)
dev.off()
jpeg(file="RplotsUL.jpg")
boxplot(data_matrix[,2], ylim=c(min(data_matrix[,2]),max(data_matrix[,2])), col= 'blue',ylab="Mbps",cex.axis=1.25,cex.lab=1.25)
legend('topleft', legend = 'Scenario 6 UL', col = 'blue', lty = 1,cex=1.25)
dev.off()
