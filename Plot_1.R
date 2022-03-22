#download & unzip data
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile="data.zip", method="curl")
unzip ("data.zip", exdir = "./")

#read data
datapower <- read.table("household_power_consumption.txt", header=TRUE, sep=";")
data <- datapower[(datapower$Date=="1/2/2007" | datapower$Date=="2/2/2007" ), ]

## Plot 1
hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red", cex.sub=0.8)

## export file
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
