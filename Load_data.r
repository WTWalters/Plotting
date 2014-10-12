##Coursera Visualizing Data 007
##Project 1
## Whit Walters

## Data was downloaded to C:\R\Plotting\
## All processes will validate that they are in the correct directory tree
setwd("C:/R/Plotting")

## Load data from file into R memory.
## required to only use two days worth of data
filename <- "./household_power_consumption.txt"
data <- read.table(filename,
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")
dim(data) 
attach(data)
subset <- Date == "1/2/2007" | Date == "2/2/2007"
newData <- data[subset, ]
attach(newData)
x <- paste(Date, Time)
newData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(newData) <- 1:nrow(newData)
dim(newData) 
attach(newData)
