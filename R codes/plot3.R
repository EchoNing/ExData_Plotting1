par(mar = c(5.1, 5.1, 4.1, 2.1))
plot(DF2d$datetime, DF2d$Sub_metering_1,
     type = "l",
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
       col=c("Black", "Red", "Blue"), 
       lty = 1, cex = 0.8,
       y.intersp = 0.55)

dev.copy(png, file = "plot3.png")
dev.off()
