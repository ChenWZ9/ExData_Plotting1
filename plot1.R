library(dplyr)
par(mfrow=c(1,1))
if(!file.exists("household_power_consumption.txt")){
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip","gdata.zip")
  unzip("gdata.zip")
  data<-read.csv("household_power_consumption.txt",sep = ";",na.strings = "?")
}
hist(newdate$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")
dev.copy(png,"plot1.png",width=480,height=480)
dev.off()