#obtain dataset
data <- read.csv("./Exploratory analysis/household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, quote='\"')
subsetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#Plotting the graph

hist(subsetData$Global_active_power, col="Red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
