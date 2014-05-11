# Read Data
source("read_Proj1_data.R")
data = read_Proj1_data('household_power_consumption.txt')

# Plot
png(filename = "plot2.png")
plot(data$datetime,data$Global_active_power, type='l',
     ylab='Global Active Power (kilowatts)', xlab="")
dev.off()

