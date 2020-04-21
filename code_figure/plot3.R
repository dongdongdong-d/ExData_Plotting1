data=read.table(file="datawenned.txt",header = TRUE,sep=";")
png(filename = "plot3.png",
    width = 480, height = 480, units = "px")
x=as.POSIXct(paste(data$Date,data$Time))
plot(x,data$Sub_metering_1,type="l",xlab=NA,ylab="Energy sub metering")
lines(x,data$Sub_metering_2,col="red")
lines(x,data$Sub_metering_3,col="blue")
legend("topright",lty=1, col=c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
