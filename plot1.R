#
## Copy my plot to a PNG file
#dev.copy(png, file = "geyserplot.png")
## Don't forget to close the PNG device!
#dev.off()#
#
## PLOT 1
#
hpc2 <- read.csv2("./exdata/household_power_consumption.txt",colClasses="character")
hpc2day1 <- filter(hpc2, Date=='1/2/2007')
hpc2day2 <- filter(hpc2, Date=='2/2/2007')
hpc2days <- rbind(hpc2day1,hpc2day2)
#
hist(as.numeric(hpc2days$Global_active_power), 
    col="red", 
    ylim=c(0,1200),
    xlab="Global Active Power (kilowatts)",
    main = "Global Active Power")
##
dev.copy(png, file = "plot1.png", width = 480, height = 480)
dev.off()
##
