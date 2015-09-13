#
## Copy my plot to a PNG file
#dev.copy(png, file = "geyserplot.png")
## Don't forget to close the PNG device!
#dev.off()#
#
## PLOT 2
#
hpc2 <- read.csv2("./exdata/household_power_consumption.txt",colClasses="character")
hpc2day1 <- filter(hpc2, Date=='1/2/2007')
hpc2day2 <- filter(hpc2, Date=='2/2/2007')
hpc2days <- rbind(hpc2day1,hpc2day2)
## day of week, convert to POSIXlt
## dtest <- "01/02/2007"
## new_date <- as.POSIXlt(as.Date(dtest, format = "%d/%m/%Y"))
## substr(format(new_date, "%A"),1,3)
## 
## use strptime --> dates <- c("02/27/92", "02/27/92", "01/14/92", "02/28/92", "02/01/92")
##                  times <- c("23:03:20", "22:29:56", "01:03:30", "18:21:03", "16:56:26")
## x <- paste(dates, times)
## strptime(x, "%m/%d/%y %H:%M:%S")
## with(hpc2days, plot(x,y))
## example with(airquality, plot(Wind, Ozone, main = "Ozone and Wind in New York City", type = "n"))
##
plot(as.numeric(hpc2days[,3]),type="l",ylab="Global Active Power (kilowatts)",xlab="",xaxt="n")
##
dev.copy(png, file = "plot2.png", width=480, height=480)
dev.off()
##
##
