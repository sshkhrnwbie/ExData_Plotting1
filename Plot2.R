# Read and subset data
source('Read_subset.R')

# Make plot2
plot(power_sub$Time, power_sub$Global_active_power,type = 'l' ,ylab = 'Global Active Power (kilowatts)' ,xlab = NA )
axis(1, at = seq(1,3,1) ,labels = c("Thu","Fri","Sat"))

# Copy to png file
dev.copy(png, file = "plot2.png")
dev.off()