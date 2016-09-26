plot4 <- function() {
        par(mfrow = c(2, 2))
        
        ## top left
        plot(plotData$setTime, plotData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
        
        ## top right
        plot(plotData$setTime, plotData$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
        
        ## bottom left
        plot(plotData$setTime, plotData$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
        lines(plotData$setTime,plotData$Sub_metering_2, col = "red")
        lines(plotData$setTime, plotData$Sub_metering_3, col = "blue")
        legend("topright", col = c("black", "red", "blue"), c("Sub_metering_1  ", "Sub_metering_2  ", "Sub_metering_3  "), lty = c(1, 1), bty = "n", cex = .5)
        
        ## bottom right
        plot(plotData$setTime, plotData$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
        
        ## copy to file device
        dev.copy(png, file = "plot4.png", width = 480, height = 480)
        dev.off()
}
plot4()