#obtain dataset
data <- read.csv("./Exploratory analysis/household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                 nrows=2075259, quote='\"')
subsetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#Plotting diagram 3
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot(datetime, subsetData$Sub_metering_1, type="l", xlab="", ylab="Energy Sub Metering")
lines(datetime, subsetData$Sub_metering_2, type="l", col="red")
lines(datetime, subsetData$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()
