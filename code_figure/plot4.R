data=read.table(file="datawenned.txt",header = TRUE,sep=";")
png(filename = "plot4.png",
    width = 480, height = 480, units = "px")
par(mfrow=c(2,2))
x=as.POSIXct(paste(data$Date,data$Time))
plot(x,data$Global_active_power,type="l"
     ,ylab="Global Active Power",xlab=NA)
plot(x,data$Voltage,type="l"
     ,ylab="Voltage",xlab="datetime")
plot(x,data$Sub_metering_1,type="l",xlab=NA,ylab="Energy sub metering")
lines(x,data$Sub_metering_2,col="red")
lines(x,data$Sub_metering_3,col="blue")
legend("topright",lty=1, col=c("black","red","blue")
       ,legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
       , cex=0.5,bty = "n")
plot(x,data$Global_reactive_power,xlab="datetime",ylab="Global_reactive_power",type="l")
dev.off()