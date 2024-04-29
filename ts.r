#Time Series Analysis in Python/R. (take 5 Years of Data)

rainfall <- c(799, 1174.8, 865.1, 1334.6, 635.4, 918.5, 685.5, 998.6, 784.2, 985, 882.8, 1071,
              814.2, 1196.5, 871.3, 1311.9, 649.8, 930.7, 699.1, 1005.3, 803.4, 1001.7, 894.5, 1098.3,
              781.5, 1162.4, 852.6, 1286.7, 625.9, 902.3, 676.8, 979.4, 763.6, 954.7, 850.3, 1042.1,
              832.7, 1223.8, 894.6, 1354.2, 660.3, 947.6, 710.2, 1029.8, 809.5, 1012.9, 902.8, 1109.4,
              805.4, 1189.2, 871.8, 1323.6, 641.5, 924.8, 693.5, 1003.1, 789.9, 989.3, 880.6, 1076.7)

rainfall.timeseries <- ts(rainfall, start = c(2012, 1), frequency = 12)
print(rainfall.timeseries)
png(file = "rainfall.png")
plot(rainfall.timeseries)
dev.off()





import pandas as pd
import matplotlib.pyplot as plt

# Data
rainfall = [799, 1174.8, 865.1, 1334.6, 635.4, 918.5, 685.5, 998.6, 784.2, 985, 882.8, 1071,
            814.2, 1196.5, 871.3, 1311.9, 649.8, 930.7, 699.1, 1005.3, 803.4, 1001.7, 894.5, 1098.3,
            781.5, 1162.4, 852.6, 1286.7, 625.9, 902.3, 676.8, 979.4, 763.6, 954.7, 850.3, 1042.1,
            832.7, 1223.8, 894.6, 1354.2, 660.3, 947.6, 710.2, 1029.8, 809.5, 1012.9, 902.8, 1109.4,
            805.4, 1189.2, 871.8, 1323.6, 641.5, 924.8, 693.5, 1003.1, 789.9, 989.3, 880.6, 1076.7]

# Convert to DataFrame
date_range = pd.date_range(start='2012-01-01', periods=len(rainfall), freq='M')
rainfall_series = pd.Series(rainfall, index=date_range)

# Plot
plt.figure(figsize=(10, 6))
rainfall_series.plot()
plt.xlabel('Date')
plt.ylabel('Rainfall')
plt.title('Monthly Rainfall Time Series')
plt.show()
