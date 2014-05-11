# Read Data
source("read_Proj1_data.R")
data = read_Proj1_data('household_power_consumption.txt')

# Plot
png(filename = "plot3.png")
with(data, plot(datetime, Sub_metering_1, type='l', col="gray",
                ylab="Energy sub metering", xlab=""))
with(data, lines(datetime, Sub_metering_2, type='l', col="red"))
with(data, lines(datetime, Sub_metering_3, type='l', col="blue"))
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("gray","red","blue"), lty=1)

dev.off()
