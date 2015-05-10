png("plot3.png", width = 480, height=480)
plot(hpc$Timestamp, hpc$Sub_metering_1, type="n", xlab="",
     ylab="Energy sub metering")
points(hpc$Timestamp, hpc$Sub_metering_1, type="l", col="black")
points(hpc$Timestamp, hpc$Sub_metering_2, type="l", col="red")
points(hpc$Timestamp, hpc$Sub_metering_3, type="l", col="blue")
legend("topright", col=c("black", "red", "blue"), lty=c(1,1,1),
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()