##Assuming that the data file(i.e. household_power_consumption.txt) is already present in the current/working directory.
a <- read.csv("household_power_consumption.txt",sep = ";", nrows = 2880,skip = 66636, comment.char="%",na.strings = "NA",col.names=c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  
  a$Date <- strptime(paste(b$Date,b$Time), "%d/%m/%Y %H:%M:%S")
  png("plot3.png", h = 480, w = 480)
  plot(b$Date, b$Sub_metering_1, type = "n",xlab = "", ylab = "Energy Sub Metering")
  lines(b$Date, b$Sub_metering_1, col = "black")
  lines(b$Date, b$Sub_metering_2, col = "red")
  lines(b$Date, b$Sub_metering_3, col = "blue")
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3", lty = c(1,1,1), col = ("black", "red", "blue")))
  dev.off()
