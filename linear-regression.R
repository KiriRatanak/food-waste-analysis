foodWaste <- read_csv("E:/Documents/KIT/Mr. Dinesh/Data Science/Final Assignment/foodwaste_data_set.csv")
foodWaste

attach(foodWaste)
names(foodWaste)
class(amount_spent) #x
class(left_over_price) #y

plot(amount_spent, left_over_price, main="Amount of Food Spent Leftover")

cor(amount_spent, left_over_price)
linear <- lm(left_over_price ~ amount_spent)
summary(linear)

attributes(linear)

abline(linear, col=2, lwd=3)