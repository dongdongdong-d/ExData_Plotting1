data=read.table(file="datawenned.txt",header = TRUE,sep=";")
png(filename = "plot2.png",
    width = 480, height = 480, units = "px")
x=as.POSIXct(paste(data$Date,data$Time))
plot(x,data$Global_active_power,type="l"
     ,ylab="Global Active Power (kilowatts)",xlab=NA)
dev.off()
