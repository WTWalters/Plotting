##Coursera Visualizing Data 007
##Project 1
## Whit Walters

## Validate that process is in the correct directory-
if (!"load_data.R" %in% list.files()) {
  setwd("C:/R/Plotting")
} 

## Plot 3
## using Load_data.R for data values
## Plot of Energy sub metering 
## with Legend sub metering 1,2, & 3 varibales
source("load_data.R")
png(filename = "plot3.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
plot(DateTime, Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")
legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)
dev.off()