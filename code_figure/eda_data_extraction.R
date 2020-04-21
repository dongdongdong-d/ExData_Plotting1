data=read.table(file="household_power_consumption.txt",header = TRUE,sep=";")
data$Date=as.Date(data$Date,format="%d/%m/%Y")
integerstart=unique(as.integer(data$Date[data$Date=="2007-02-01"]))
integerend=unique(as.integer(data$Date[data$Date==" 2007-02-02"]))
dataweneed=data[(as.integer(data$Date)<=integerend&as.integer(data$Date)>=integerstart),]
unique(dataweneed$Date)
row.names(dataweneed)=NULL
write.table(dataweneed,file="datawenned.txt",sep=";")
# Now we have all the data.
dataweneed=read.table(file="datawenned.txt",header = TRUE,sep=";")
