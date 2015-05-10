png("plot1.png", width = 480, height=480)
hist(hpc$Global_active_power, col = "red", ylim=c(0,1200), main = "Global Active Power", xlab = "Global Active Power (Kilowatts)")
dev.off()