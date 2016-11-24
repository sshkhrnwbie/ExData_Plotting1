# Read and subset data
source('Read_subset.R')

# Make plot3
plot(power_sub$Time, power_sub$Sub_metering_1 ,type = 'l' ,ylab = NA ,xlab = NA )
lines(power_sub$Time, power_sub$Sub_metering_2 ,type = 'l' ,ylab = NA ,xlab = NA, col = 'red')
lines(power_sub$Time, power_sub$Sub_metering_3 ,type = 'l' ,ylab = NA ,xlab = NA, col = 'blue' )
title(ylab = 'Energy Sub metering')
axis(1, at = seq(1,3,1) ,labels = c("Thu","Fri","Sat"))
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black","red","blue"), lty = c(1,1,1), border = 'black', cex = 0.5)

# Copy to png file
dev.copy(png, file = "plot3.png")
dev.off()