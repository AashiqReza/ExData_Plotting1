# Readind Data
data <- read.table("C:/Users/Aashiq/Documents/household_power_consumption.txt" , header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

# selecting data between given period of time

subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

str(subSetData)

# converting into numeric form

globalActivePower <- as.numeric(subSetData$Global_active_power)

png("plot1.png", width=480, height=480)

hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()