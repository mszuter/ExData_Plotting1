df<-read.csv("household_power_consumption_eds.txt", sep=";",header=T)
df$Times<-as.POSIXct(strptime(paste(df$Date, df$Time, sep=" "), "%d/%m/%Y %H:%M:%S"))

str(df)
par(mfcol=c(2,2))
plot(Global_active_power~Times, data=df, type="l", xlab="", ylab="Global Active Power (kilowatts)")
plot(Sub_metering_1~Times, data=df, type="l", xlab="", ylab="Energy sub metering")
#legend(x=as.numeric(as.POSIXct("2007-02-01 15:30:00")), y=39.5, lty = 1, col = c("black", "red", "blue"), legend=c("Sub metering 1", "Sub metering 2", "Sub metering 3"),  y.intersp = 0.3, box.lty=0)
lines(Sub_metering_2~Times, data=df, col = "red")
lines(Sub_metering_3~Times, data=df, col = "blue")
plot(Voltage~Times, data=df, type="l", xlab="", ylab="Voltage")
plot(Global_reactive_power~Times, data=df, type="l", xlab="", ylab="Global Reactive Power (kilowatts)")
?legend
