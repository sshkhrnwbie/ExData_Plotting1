# First read and subset Data

power = read.table("household_power_consumption.txt",header = TRUE,sep=";",na.strings = '?')
str(power) 

Time <- as.POSIXct(paste(power$Date, power$Time), format="%d/%m/%Y %H:%M:%S")
head(Tim)

power <- subset(power, select = -c(Date,Time))
power <- cbind(Time,power)

Start <- as.POSIXct("2007-02-01")
End <- as.POSIXct("2007-02-02")

power_sub <- power[power$Time >= Start & power$Time <= End,]
summary(power_sub)

# Make plot1

hist(power_sub$Global_active_power, main = 'Global Active Power', xlab = 'Global Active Power (kilowatts)', ylab = 'Frequency' ,col = 'red')

