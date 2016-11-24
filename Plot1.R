# Read and subset data
source('Read_subset.R')

# Make plot1
hist(power_sub$Global_active_power, main = 'Global Active Power', xlab = 'Global Active Power (kilowatts)', ylab = 'Frequency' ,col = 'red')

# Copy to png file
dev.copy(png, file = "plot1.png")
dev.off()