

datagraphs <- read.csv("C:/Users/ediri/Desktop/Curso R/Johns Hopkins University/Exploratory Data Analysis/Week1/ExData_Plotting1/household_power_consumption.txt", sep=";")



# Plot1 -------------------------------------------------------------------
sub <- subset(datagraphs,datagraphs$Date=="1/2/2007" | datagraphs$Time =="2/2/2007")
sub$Global_active_power <- as.numeric(sub$Global_active_power)
png("plot1.png", width=500, height=500)
with(sub,hist(Global_active_power,col = "red",main = "Global Active Power",xlab = "Global Active Power (kilowatts)"))
dev.off()



