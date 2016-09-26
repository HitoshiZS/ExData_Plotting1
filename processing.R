## Set working directory
setwd("~/Desktop/Coursera/ExData_Plotting1")

## Download file
if(!file.exists("exdata-data-household_power_consumption.zip")) {
        temp <- tempfile()
        download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp)
        file <- unzip(temp)
        unlink(temp)
}

## Read data
fullData <- read.table(file, header = TRUE, sep=";", na.strings="?")
plotData <- fullData[fullData$Date %in% c("1/2/2007","2/2/2007"), ]

## Set time
setTime <- strptime(paste(plotData$Date, plotData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")

## Plot data frame
plotData <- cbind(setTime, plotData)