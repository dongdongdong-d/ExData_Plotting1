data=read.table(file="datawenned.txt",header = TRUE,sep=";")
png(filename = "plot1.png",
    width = 480, height = 480, units = "px")
hist(data$Global_active_power,col="red",ylab="Frequency",xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()
