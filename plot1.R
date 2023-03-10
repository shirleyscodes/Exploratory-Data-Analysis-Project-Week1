# Submission by: Shirley Asangi[asangishirley@gmail.com]

power_data <- read.csv("data/household_power_consumption.txt", header = TRUE, sep = ';', 
                       na.strings = "?", nrows = 2075259, check.names = FALSE, 
                       stringsAsFactors = FALSE, comment.char = "", quote = '\"')

# Selecting data for 1/2/2007 and 2/2/2007
selected_data <- subset(power_data, Date %in% c("1/2/2007", "2/2/2007"))

# Converting the date column to a date object
selected_data$Date <- as.Date(selected_data$Date, format = "%d/%m/%Y")

# Creating a histogram of the global active power variable for the selected dates

hist(selected_data$Global_active_power, main = "Global Active Power", 
     
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")


