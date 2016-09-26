plot1 <- function() {
        par(mfrow = c(1, 1))
        hist(plotData$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")
        dev.copy(png, file = "plot1.png", width = 480, height = 480)
        dev.off()
}
plot1()