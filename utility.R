todo <- read.table("household_power_consumption.txt", header = TRUE, sep=";", na.strings="?")

hpc <<- with(subset(todo, Date == "1/2/2007" | Date == "2/2/2007"),
  data.frame(Timestamp = strptime(paste(Date, Time),
                 format="%d/%m/%Y %H:%M:%S"),
                 Global_active_power, Global_reactive_power,
                 Voltage,
                 Global_intensity, Sub_metering_1, Sub_metering_2,
                 Sub_metering_3))