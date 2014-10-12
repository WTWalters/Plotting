## Coursera Visualizing Data 007
## Project 1
## Whit Walters

## Validate that process is in the correct directory-
if (!"load_data.R" %in% list.files()) {
  setwd("C:/R/Plotting")
} 


## Plot1
## using Load_data.R for data values
## Histogram of Global Active Power
source("load_data.R")
png(filename = "plot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")
hist(Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0, 1200))
dev.off()
