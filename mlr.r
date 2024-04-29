x1 <- c(3.0, 4.0, 1.3, 2.2, 3.9, 4.8) 
x2 <- c(1.6, 2.5, 1.2, 2.0, 0.9, 1.7)
y  <- c(159, 113, 65, 89, 122, 186) 
relation <- lm(y ~ x1 + x2)
print(coef(relation))
print(summary(relation))
new_data <- data.frame (x1 = 3.5, x2 = 2.7)
result <- predict(relation, newdata = new_data)
print(result)
predictions <- predict(relation)
plot(x1, y, pch = 16, col = "blue", xlab = "x1", ylab = "y", main = "Multiple Linear Regression")
points(x2, y, pch = 16, col = "red")
legend("topright", legend = c("x1", "x2"), col = c("blue", "red"), pch = 16)
abline(relation$coefficients["(Intercept)"], relation$coefficients["x1"], col = "blue") 
abline(relation$coefficients["(Intercept)"] + relation$coefficients["x2"], relation$coefficients["x1"], col = "red")













































data(mtcars)
head(mtcars)
model <- lm(mpg ~ wt + hp + qsec, data = mtcars)
summary(model)
predictions <- predict(model)
plot(predictions, mtcars$mpg, main = "Observed vs. Predicted MPG", 
     xlab = "Predicted MPG", ylab = "Observed MPG")
abline(0, 1, col = "red")