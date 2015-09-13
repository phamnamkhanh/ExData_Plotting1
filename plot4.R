
# get Data
source("load_data.R")
my_df <- load_data()
myData_TwoDaysPeriod <- my_df



# Plots Parameters
Plot_width         <- 480
Plot_height        <- 480
Plot_name      <- "plot4.png"
col3   <- "blue"
col2    <- "red"
col1     <- "black"
ylabel3        <- "Energy sub metering"
ylabel1         <- "Global Active Power"
PlotXLabel        <- ""
PlotYLabel        <- "Energy sub metering"


#Open PNG Graphical Device 
png(filename = Plot_name , width = Plot_width, height = Plot_height)


#Graphic grid 2x2
par(mfrow=c(2,2))


# Graphic 1 Plot
plot(my_df$DateTime, my_df$Global_active_power, type="l", xlab="", ylab=ylabel1)

# Graphic 2 Plot
plot(my_df$DateTime, my_df$Voltage, type="l", xlab="datetime", ylab="Voltage")

# Graphic 3 Plot
plot(my_df$DateTime, my_df$Sub_metering_1, col = col1, type="l", xlab="", ylab=ylabel3)

lines(my_df$DateTime, my_df$Sub_metering_2, col=col2)
lines(my_df$DateTime, my_df$Sub_metering_3, col=col3)
legend("topright",col=c("black", "red", "blue"), c("Sub_metering_1", 
                 "Sub_metering_2", "Sub_metering_3"), lty=1)



# Graphic 4 Plot
plot(my_df$DateTime, my_df$Global_reactive_power, type="n", xlab="datetime", ylab="Global_reactive_power")
lines(my_df$DateTime, my_df$Global_reactive_power)

# Close Graphical device
dev.off()



