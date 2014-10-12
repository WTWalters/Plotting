##Coursera Visualizing Data 007
##Project 1
## Whit Walters

## Validate that process is in the correct directory-
## to plot dataset we call the Load_data.r process
if (!"load_data.R" %in% list.files()) {
  setwd("C:/R/Plotting")
} 

##Plot 4
## 4 Plots of data metrics
## using Load_data.R for data values
source("load_data.R")
png(filename = "plot4.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
par(mfrow = c(2, 2))

## Upper Left Plot
##Global active power - same as plot1.r
plot(DateTime, Global_active_power, 
     type = "l",
     xlab = "", ylab = "Global Active Power")

## Upper Right Plot
## Voltage over time
plot(DateTime, Voltage,
     type = "l",
     xlab = "datetime", ylab = "Voltage")

## Lower Left
## Sub Metering over time with 3 sub metering variables
plot(DateTime, Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")
# Remove the border of legend here.
legend("topright", 
       bty = "n",
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)

## Lower Right
## Global Reactive power over time
plot(DateTime, Global_reactive_power, 
     type = "l",
     col = "black",
     xlab = "datetime", ylab = colnames(newData)[4])
dev.off()