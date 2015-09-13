#
## Copy my plot to a PNG file
#dev.copy(png, file = "geyserplot.png")
## Don't forget to close the PNG device!
#dev.off()#
#
## PLOT 3
#
hpc2 <- read.csv2("./exdata/household_power_consumption.txt",colClasses="character")
hpc2day1 <- filter(hpc2, Date=='1/2/2007')
hpc2day2 <- filter(hpc2, Date=='2/2/2007')
hpc2days <- rbind(hpc2day1,hpc2day2)
#
#
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
#