png("plot4.png", width = 480, height = 480)

par(mfcol=c(2,2))

plot(hpc$Timestamp, hpc$Global_active_power, type="l",
     xlab="", ylab="Global Active Power")

plot(hpc$Timestamp, hpc$Sub_metering_1, type="n", xlab="",
     ylab="Energy sub metering")
points(hpc$Timestamp, hpc$Sub_metering_1, type="l", col="black")
points(hpc$Timestamp, hpc$Sub_metering_2, type="l", col="red")
points(hpc$Timestamp, hpc$Sub_metering_3, type="l", col="blue")
legend("topright", col=c("black", "red", "blue"), lty=c(1,1,1), bty="n",
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


plot(hpc$Timestamp, hpc$Voltage, type="l",
     xlab="datetime", ylab="Voltage")

plot(hpc$Timestamp, hpc$Global_reactive_power, type="l",
     xlab="datetime", ylab="Global_reactive_power")

dev.off()

