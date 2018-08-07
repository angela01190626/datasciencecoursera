a<- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", 
               colClasses = c('character','character','numeric','numeric','numeric','numeric',
                              'numeric','numeric','numeric'))
b<-subset(a, a$Date == "1/2/2007" | a$Date == "2/2/2007")
completetime<-strptime(paste(b$Date, b$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
d<- cbind(completetime,b)
par(mfrow=c(2,2))
plot(d$completetime,d$Global_active_power,type="l",xlab="",ylab="Global Active Power(kilowatts)")
plot(d$completetime,d$Voltage,xlab="datetime",ylab="Voltage",type="l")
plot(d$completetime,d$Sub_metering_1,type="l",xlab="",ylab="Energy sub meeting")
  lines(d$completetime,d$Sub_metering_2,type="l",col="red")
  lines(d$completetime,d$Sub_metering_3,type="l",col="blue")
legend("topright",bty="n",c("Sub_meeting_1","Sub_meeting_2","Sub_meeting_3"),lty=c(1,1,1),col=c("black","red","blue"))
plot(d$completetime,d$Global_reactive_power,xlab="datetime",ylab="Global_reactive_power",type="l")
