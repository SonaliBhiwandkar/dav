X <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
Y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
plot(X, Y, col = "blue", main = "Height & Weight Relationship", xlab = "Weight (kg)", ylab = "Height (cm)")
relation <- lm(Y ~ X)
print(summary(relation))
new_data <- data.frame(X = 170)
result <- predict(relation, new_data)
print(result)
abline(relation, col = "red")
png(file = "linear_regression_plot.png")
plot(X, Y, col = "blue", main = "Height & Weight Regression", xlab = "Weight in kg", ylab = "Height in cm")
abline(relation, col = "red")
dev.off()



















data(mtcars)
head(mtcars)
plot(mtcars$mpg, mtcars$wt)
model <- lm(mpg ~ wt, data = mtcars)
predict(model)
summary(model)
plot(mtcars$wt, mtcars$mpg, main = "Simple Linear Regression", xlab = "Weight", ylab = "MPG")
abline(model, col = "blue")