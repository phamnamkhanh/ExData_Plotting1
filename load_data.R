## Author: Pham Khanh 

# Create a function to load data from file so that dont have to copy it to every file
load_data <- function() {
  
# loading datatable library
library(data.table)
filename    <- "household_power_consumption.txt"

# Dates informations and formats
start_date         <- "2007-02-01"
end_date           <- "2007-02-02"

# Read file in a datatable
my_df <- fread(filename, header=TRUE, sep=";",  na="?", colClasses="character")

# change format dates
my_df$Date <- as.Date(my_df$Date, format="%d/%m/%Y")

# slect data of two days
two_df <-  my_df[my_df$Date >= start_date & my_df$Date <= end_date]
two_df <- data.frame(two_df)

# Transform some columns to numeric 
for(i in c(3:9)) {
  two_df[,i] <- as.numeric(as.character(two_df[,i]))
}

# Create DateTime variable
two_df$DateTime <- paste(two_df$Date, two_df$Time)
two_df$DateTime <- strptime(two_df$DateTime, format = "%Y-%m-%d %H:%M:%S")

# return data
return (two_df)

}
