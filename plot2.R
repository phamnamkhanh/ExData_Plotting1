# load Data
source("load_data.R")
my_df <- load_data()



# Plots Parameters
Plot_width         <- 480
Plot_height        <- 480
Plot_name      <- "plot2.png"
ylabel2        <- "Global Active Power (kilowatts)"

#Open PNG Graphical Device 
png(filename = Plot_name , width = Plot_width, height = Plot_height)
# Plot time series
plot(my_df$DateTime, my_df$Global_active_power, type="l",xlab="",ylab=ylabel2)

# Close Graphical device
dev.off()

