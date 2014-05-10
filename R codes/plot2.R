par(mar = c(5.1, 5.1, 4.1, 2.1))
plot(DF2d$datetime, DF2d$Global_active_power,
     type = "l",
     xlab="",
     ylab="Global Active Power (kilowatts)")

dev.copy(png, file = "plot2.png")
dev.off()
