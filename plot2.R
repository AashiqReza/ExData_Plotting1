# Readind Data
data <- read.table("C:/Users/Aashiq/Documents/household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")

# selecting data between given period of time

subdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]


str(subdata)

# converting into date and time format

date_time <- strptime(paste(subdata$Date, subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

# converting into numeric form

globalactivepower <- as.numeric(subdata$Global_active_power)

png("plot1.png", width=480, height=480)

plot(date_time, globalactivepower, type = "l", main="Global Active Power", xlab = " ", ylab="Global Active Power (kilowatts)")
dev.off()
