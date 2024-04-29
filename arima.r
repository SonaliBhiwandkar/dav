install.packages("forecast")
library(forecast)
png(file = "TimeSeriesGFG.png")
plot (BJsales, main = "Graph without forecasting",
      col.main = "darkgreen")
dev.off()
png(file="TimeSeriesARIMAGFG.png")
fit <- auto.arima(BJsales)
forecastedvalues <- forecast(fit, 10)
print(forecastedvalues)
plot(forecastedvalues, main = "Graph with forecasting",
     col.main = "darkgreen")
dev.off()
pre<-predict(fit)
print(pre)







import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from statsmodels.tsa.arima.model import ARIMA
data = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
model = ARIMA(data, order=(1, 1, 0))  
results = model.fit()
forecast = results.forecast(steps=5)  
plt.figure(figsize=(10, 6))
plt.plot(data, label='Actual Data')
plt.plot(range(len(data), len(data) + len(forecast)), forecast, color='red', label='Forecast')
plt.title('ARIMA Forecast')
plt.xlabel('Time')
plt.ylabel('Value')
plt.legend()
plt.show()
