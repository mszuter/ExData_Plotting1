df<-read.csv("household_power_consumption_eds.txt", sep=";",header=T)
df$Times<-as.POSIXct(strptime(paste(df$Date, df$Time, sep=" "), "%d/%m/%Y %H:%M:%S"))
plot(Global_active_power~Times, data=df, type="l", xlab="", ylab="Global Active Power (kilowatts)")
