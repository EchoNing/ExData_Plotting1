par(mar = c(5.1, 5.1, 4.1, 2.1))
hist(DF2d$Global_active_power, xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power", col = "Red")

dev.copy(png, file = "plot1.png")
dev.off()
