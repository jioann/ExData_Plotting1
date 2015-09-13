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
## PLOT 2
##
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
## PLOT 3
##
with(hpc2days, plot(as.numeric(hpc2days[,7]),ylab="Energy sub metering",type="n",ylim=c(0,40),xlab="",xaxt="n"))
with(hpc2days, lines(as.numeric(hpc2days[,7]),ylab="Energy sub metering",type="l",col="black",ylim=c(0,40),xlab="",xaxt="n"))
with(hpc2days, lines(as.numeric(hpc2days[,8]),ylab="Energy sub metering",type="l",col="red",ylim=c(0,40),xlab="",xaxt="n"))
with(hpc2days, lines(as.numeric(hpc2days[,9]),ylab="Energy sub metering",type="l",col="blue",ylim=c(0,40),xlab="",xaxt="n"))
legend("topright",lty=1,col=c("black","red","blue"),c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
##
##
dev.copy(png, file = "plot3.png", width=745, height=480)
dev.off()
##
## PLOT 4
##
## plot(as.numeric(hpc2days[,4]), ylab = "Global_reactive_power", type = "l",xlab="",xaxt="n")
##
par(mfrow=c(2,2),mar=c(6,4,2,2))
with(hpc2days, {
##  # here four plots are filled in with their respective titles
  plot(as.numeric(hpc2days[,3]), ylab = "Global Active Power", type = "l",xlab="",xaxt="n")
  plot(as.numeric(hpc2days[,5]), ylab = "Voltage", type = "l",xlab="datetime",xaxt="n")
  with(hpc2days, plot(as.numeric(hpc2days[,7]),ylab="Energy sub metering",type="n",ylim=c(0,40),xlab="",xaxt="n"))
  with(hpc2days, lines(as.numeric(hpc2days[,7]),ylab="Energy sub metering",type="l",col="black",ylim=c(0,40),xlab="",xaxt="n"))
  with(hpc2days, lines(as.numeric(hpc2days[,8]),ylab="Energy sub metering",type="l",col="red",ylim=c(0,40),xlab="",xaxt="n"))
  with(hpc2days, lines(as.numeric(hpc2days[,9]),ylab="Energy sub metering",type="l",col="blue",ylim=c(0,40),xlab="",xaxt="n"))
  legend("topright",lty=1,col=c("black","red","blue"),c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  plot(as.numeric(hpc2days[,4]), ylab = "Global_reactive_power", type = "l",xlab="datetime",xaxt="n") }
)
##
##
dev.copy(png, file = "plot4.png", width=920, height=710)
dev.off()axis
##
