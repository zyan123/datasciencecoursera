hpdata <- read.table(text = grep("^[1,2]/2/2007",readLines("household_power_consumption.txt"),value=TRUE), sep = ';', col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), na.strings = '?')
hpdata$Date <- as.Date(hpdata$Date, format = '%d/%m/%Y')
hpdata$Time <- as.POSIXct(paste(hpdata$Date, hpdata$Time))
plot(hpdata$Time, hpdata$Global_active_power, xlab = "", ylab = "Global Active Power (Kilowatts)", type = "l")
