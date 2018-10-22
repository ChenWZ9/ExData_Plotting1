library(dplyr)
if(!file.exists("household_power_consumption.txt")){
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip","gdata.zip")
  unzip("gdata.zip")
  data<-read.csv("household_power_consumption.txt",sep = ";",na.strings = "?")
}
par(mfrow=c(1,1))
plot(newdate$Global_active_power~newdate$Datetime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png,"plot2.png",width=480,height=480)
dev.off()
