a<-read.table(file.choose(),header=TRUE, sep = ";")
b<-subset(a, a$Date == "1/2/2007" | a$Date == "2/2/2007")
hist(as.numeric(as.character(b$Global_active_power)),col="red",
     xlab="Global Active Power (kilowatts)",
     main = "Global Active Power")
