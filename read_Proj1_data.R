read_Proj1_data <- function (fileName) {
     initial = read.table(fileName, header = TRUE, sep = ";",
                          na.strings = c("?"), nrows = 10, as.is=FALSE)
     classes = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric",
                 "numeric")
     data = read.table('household_power_consumption.txt', header = TRUE, sep = ";",
                       col.names = colnames(initial), colClasses = classes, 
                       na.strings = c("?"), skip=6500)
     data$Date <- as.Date(data$Date , "%d/%m/%Y")
     
     # Select just the relevant data
     data = data[data$Date==as.Date("2007-02-01") | data$Date==as.Date("2007-02-02"),]
     dtms = paste(data$Date, data$Time)
     data$datetime = strptime(dtms, format="%Y-%m-%d %H:%M:%S")
     data
}