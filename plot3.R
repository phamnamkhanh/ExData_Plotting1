
# get Data
source("load_data.R")
my_df <- load_data()



# Plots Parameters
Plot_width         <- 480
Plot_height        <- 480
Plot_name      <- "plot3.png"
col3   <- "blue"
col2    <- "red"
col1     <- "black"
ylabel3        <- "Energy sub metering"


#Open PNG Graphical Device 
png(filename = Plot_name , width = Plot_width, height = Plot_height)

# Graphic Plot
plot(my_df$DateTime, my_df$Sub_metering_1, col = col1, type="l", xlab="", ylab=ylabel3)
lines(my_df$DateTime, my_df$Sub_metering_2, col=col2)
lines(my_df$DateTime, my_df$Sub_metering_3, col=col3)
legend("topright",col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)

# Close Graphical device
dev.off()



