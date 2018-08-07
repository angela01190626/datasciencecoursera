a<- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", 
                   colClasses = c('character','character','numeric','numeric','numeric','numeric',
                                  'numeric','numeric','numeric'))
b<-subset(a, a$Date == "1/2/2007" | a$Date == "2/2/2007")
completetime<-strptime(paste(b$Date, b$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
d<- cbind(completetime,b)
plot(d$completetime,d$Global_active_power,type="l",xlab="",ylab="Global Active Power(kilowatts)")


