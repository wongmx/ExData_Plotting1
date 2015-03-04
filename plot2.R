#obtain dataset
data <- read.csv("./Exploratory analysis/household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                 nrows=2075259, quote='\"')
subsetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#Plotting diagram 2
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot(datetime, subsetData$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
