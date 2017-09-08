df<-read.csv("household_power_consumption_eds.txt", sep=";",header=T)
str(df)
hist(df$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
