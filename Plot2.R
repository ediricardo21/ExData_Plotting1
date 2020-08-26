datagraphs <- read.csv("C:/Users/ediri/Desktop/Curso R/Johns Hopkins University/Exploratory Data Analysis/Week1/ExData_Plotting1/household_power_consumption.txt", sep=";")

datagraphs$Datetime <- strptime(paste(datagraphs$Date,datagraphs$Time), format= "%d/%m/%Y %H:%M:%S")
sub2 <- subset(datagraphs,datagraphs$Date=="1/2/2007" | datagraphs$Date =="2/2/2007")
sub2$Global_active_power <- as.numeric(sub2$Global_active_power)
png("plot2.png", width=500, height=500)
with(sub2,plot(Datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))

dev.off()
