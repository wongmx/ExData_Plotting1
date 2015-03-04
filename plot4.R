#obtain dataset
data <- read.csv("./Exploratory analysis/household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                 nrows=2075259, quote='\"')
subsetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#Plotting diagram 4
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
par(mfrow = c(2, 2)) 
plot(datetime, subsetData$Global_active_power, type="l", xlab="", ylab="Global Active Power")
plot(datetime, subsetData$Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(datetime, subsetData$Sub_metering_1, type="l", xlab="", ylab="Energy Sub Metering")
lines(datetime, subsetData$Sub_metering_2, type="l", col="red")
lines(datetime, subsetData$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=.1, lwd=.1, col=c("black", "red", "blue"), bty="o")
plot(datetime, subsetData$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")


dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()
