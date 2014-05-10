bg <- rgb(256, 256, 256, 0)
par(mfrow = c(2,2), bg = bg)
## 1
plot(DF2d$datetime, DF2d$Global_active_power,
     type = "l", 
     cex.lab = 0.8, cex.axis = 0.8,
     xlab="", ylab="Global Active Power")

## 2
plot(DF2d$datetime, DF2d$Voltage,
     type = "l", 
     cex.lab = 0.8, cex.axis = 0.8,
     xlab="datetime", ylab="Voltage")

## 3
plot(DF2d$datetime, DF2d$Sub_metering_1,
     type = "l",
     cex.lab = 0.8, cex.axis = 0.8,
     xlab="",
     ylab="Energy sub metering")

lines(DF2d$datetime, DF2d$Sub_metering_2,
      col="Red")
lines(DF2d$datetime, DF2d$Sub_metering_3,
      col="Blue")

legText <- c(paste("Sub_metering_1", "          "), 
             paste("Sub_metering_2", "          "), 
             paste("Sub_metering_3", "          "))

legend("topright", legend = legText, 
       border = bg, bty = "n",
       y.intersp = 0.3,
       col=c("Black", "Red", "Blue"), 
       lty = 1, cex = 0.5)

## 4
plot(DF2d$datetime, DF2d$Global_reactive_power,
     type = "l", 
     cex.lab = 0.8, cex.axis = 0.8,
     xlab="datetime", ylab="Global_reactive_power")

dev.copy(png, file = "plot4.png")
dev.off()
