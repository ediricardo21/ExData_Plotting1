datagraphs <- read.csv("C:/Users/ediri/Desktop/Curso R/Johns Hopkins University/Exploratory Data Analysis/Week1/ExData_Plotting1/household_power_consumption.txt", sep=";")
datagraphs$Datetime <- strptime(paste(datagraphs$Date,datagraphs$Time), format= "%d/%m/%Y %H:%M:%S")
sub2 <- subset(datagraphs,datagraphs$Date=="1/2/2007" | datagraphs$Date =="2/2/2007")
sub2$Global_active_power <- as.numeric(sub2$Global_active_power)
sub2$Global_reactive_power <- as.numeric(sub2$Global_reactive_power)

png("plot4.png", width=500, height=500)
par(mfrow=c(2,2))
with(sub2,plot(Datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))

with(sub2,plot(Datetime, Voltage, type="l", xlab="", ylab="Voltage"))

plot(sub2$Datetime,sub2$Sub_metering_1, type = "l",xlab = "",ylab = "Energy sub metering")
lines(sub2$Datetime,sub2$Sub_metering_2, type = "l",col="red")
lines(sub2$Datetime,sub2$Sub_metering_3, type = "l",col="blue")
legend("topright",pch = "___",col = c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

with(sub2,plot(Datetime, Global_reactive_power, type="l"))

dev.off()

