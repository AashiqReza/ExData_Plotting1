# Readind Data
data <- read.table("C:/Users/Aashiq/Documents/household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")

# selecting data between given period of time

subdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

str(subdata)

# converting into date and time format

date_time <- strptime(paste(subdata$Date, subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

# converting into numeric form

subm1 <- as.numeric(subdata$Sub_metering_1)
subm2 <- as.numeric(subdata$Sub_metering_2)
subm3 <- as.numeric(subdata$Sub_metering_3)

# plot 

plot(date_time, type = "l", subm1, xlab = "", ylab = "Energy Sub Metering")

# adding lines
lines(date_time, subm2, col = "red")
lines(date_time, subm3, col = "blue")

png("plot1.png", width=480, height=480)

# adding legend
legend("topright",lty = 1, lwd = 2, col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()
