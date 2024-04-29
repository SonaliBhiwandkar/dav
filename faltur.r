# Load required library
library(ggplot2)
data <- data.frame(
  x = c(1, 2, 3, 4, 5),
  y = c(5, 7, 3, 8, 4))
# Create a ggplot object
ggplot(data, aes(x = x, y = y)) +
  geom_point() +
  geom_line() +
  labs(title = "Example Plot using ggplot2",
       x = "X-axis",
       y = "Y-axis")



# Load required library
install.packages("plotly")
library(plotly)
data <- data.frame(
  x = c(1, 2, 3, 4, 5),
  y = c(5, 7, 3, 8, 4))
# Create a plotly plot
plot_ly(data, x = ~x, y = ~y, type = "scatter", mode = "markers+lines") %>%
  layout(title = "Example Plot using plotly",
         xaxis = list(title = "X-axis"),
         yaxis = list(title = "Y-axis"))

