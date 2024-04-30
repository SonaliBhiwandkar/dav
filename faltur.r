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

import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Load dataset for scatterplot and bar graph
iris = sns.load_dataset('iris')

# Example data for pie chart and histogram
cars_data = {'Brand': ['Toyota', 'Ford', 'BMW', 'Audi', 'Honda'],
             'Sales': [1500, 1200, 900, 800, 700]}

# Create DataFrame
cars_df = pd.DataFrame(cars_data)

# Plot pie chart for car sales
plt.figure(figsize=(8, 6))
plt.pie(cars_df['Sales'], labels=cars_df['Brand'], autopct='%1.1f%%', startangle=140)
plt.title('Car Sales Distribution')
plt.axis('equal')  # Equal aspect ratio ensures that pie is drawn as a circle.
plt.show()

# Plot histogram for car sales
plt.figure(figsize=(8, 6))
plt.hist(cars_df['Sales'], bins=5, color='skyblue', edgecolor='black', alpha=0.7)
plt.xlabel('Sales')
plt.ylabel('Frequency')
plt.title('Car Sales Histogram')
plt.show()

# Plot scatterplot using Seaborn
plt.figure(figsize=(8, 6))
sns.scatterplot(data=iris, x='sepal_length', y='sepal_width', hue='species', palette='deep')
plt.title('Scatterplot of Sepal Length vs Sepal Width')
plt.xlabel('Sepal Length')
plt.ylabel('Sepal Width')
plt.show()

# Plot bar graph using Seaborn
plt.figure(figsize=(8, 6))
sns.barplot(data=iris, x='species', y='petal_length', ci=None)
plt.title('Bar Graph of Petal Length by Species')
plt.xlabel('Species')
plt.ylabel('Petal Length')
plt.show()
