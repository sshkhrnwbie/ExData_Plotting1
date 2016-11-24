# Read and subset data
source('Read_subset.R')

# Make plot4
par(mfrow = c(2,2))

# First plot
plot(power_sub$Time, power_sub$Global_active_power,type = 'l' ,ylab = 'Global Active Power' ,xlab = NA )
axis(1, at = seq(1,3,1) ,labels = c("Thu","Fri","Sat"))

# Second plot
plot(power_sub$Time, power_sub$Voltage,type = 'l' ,ylab = 'Voltage' ,xlab = 'datetime' )
axis(1, at = seq(1,3,1) ,labels = c("Thu","Fri","Sat"))

# Third plot
plot(power_sub$Time, power_sub$Sub_metering_1 ,type = 'l' ,ylab = NA ,xlab = NA )
lines(power_sub$Time, power_sub$Sub_metering_2 ,type = 'l' ,ylab = NA ,xlab = NA, col = 'red')
lines(power_sub$Time, power_sub$Sub_metering_3 ,type = 'l' ,ylab = NA ,xlab = NA, col = 'blue' )
title(ylab = 'Energy Sub metering')
axis(1, at = seq(1,3,1) ,labels = c("Thu","Fri","Sat"))
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black","red","blue"), lty = c(1,1,1), cex=0.5)

# Fourth plot
plot(power_sub$Time, power_sub$Global_reactive_power, type = 'l', ylab = 'Global_reactive_power', xlab = 'datetime' )
axis(1, at = seq(1,3,1) ,labels = c("Thu","Fri","Sat"))

# Copy to png file
dev.copy(png, file = "plot4.png")
dev.off()