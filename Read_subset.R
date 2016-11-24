# First read and subset Data

power = read.table("household_power_consumption.txt",header = TRUE,sep=";",na.strings = '?')

Time <- as.POSIXct(paste(power$Date, power$Time), format="%d/%m/%Y %H:%M:%S")

power <- subset(power, select = -c(Date,Time))
power <- cbind(Time,power)

Start <- as.POSIXct("2007-02-01")
End <- as.POSIXct("2007-02-03")

power_sub <- power[power$Time >= Start & power$Time < End,]

remove(power)
remove(Time)
remove(Start)
remove(End)