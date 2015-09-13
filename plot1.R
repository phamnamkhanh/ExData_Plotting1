# load Data
source("load_data.R")
my_df <- load_data()


# Plots Parameters
Plot_width         <- 480
Plot_height        <- 480
Plot_name      <- "plot1.png"
col1  <- "red"
title1       <- "Global Active Power"
xlabel1        <- "Global Active Power(kilowatts)"


#Open PNG Graphical Device 
png(filename = Plot_name , width = Plot_width, height = Plot_height)
# Plot histogram
hist(my_df$Global_active_power, col = col1, main = title1, xlab = xlabel1)
# Close Graphical device
dev.off()


