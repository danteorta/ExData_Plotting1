source("read_Proj1_data.R")
data = read_Proj1_data('household_power_consumption.txt')

png(filename="plot4.png")
# Define grid
par(mfrow = c(2, 2))
# Plot 1
with(data, plot(datetime, Global_active_power,type='l',
                ylab='Global Active Power (kilowatts)', xlab=""))
# Plot 2
with(data, plot(datetime, Voltage, type='l', ylab='Voltage', xlab='datetime'))
# Plot 3
with(data, plot(datetime, Sub_metering_1, type='l', col="gray",
                ylab="Energy sub metering", xlab=""))
with(data, lines(datetime, Sub_metering_2, type='l', col="red"))
with(data, lines(datetime, Sub_metering_3, type='l', col="blue"))
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("gray","red","blue"), lty=1, cex = 1)
# Plot4
with(data, plot(datetime, Global_reactive_power, type='l',
                ylab='Global_reactive_power', xlab='datetime'))

dev.off()

