##Coursera Visualizing Data 007
##Project 1
## Whit Walters

## Validate that process is in the correct directory-
if (!"load_data.R" %in% list.files()) {
  setwd("C:/R/Plotting")
} 

##Plot 2
## using Load_data.R for data values
##Plot of Global active power in kilowatts
source("load_data.R")
png(filename = "plot2.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
plot(DateTime, Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()