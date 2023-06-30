library(tidyverse)
list.files()
setwd("C:\\Users\\erdav\\Desktop\\Diabetes")
data <- read.csv("diabetes_prediction_dataset.csv")

head(data)
str(data)

ggplot(data, aes(x = age)) +
  geom_histogram(bins = 30, color = "black", aes(fill = after_stat(density))) +
  scale_fill_gradient(low = "blue", high = "red") +
  labs(title = "Age Distribution", x = "Age", y = "Count") +
  theme_classic()

ggplot(data, aes(x = factor(diabetes), y = bmi, fill = factor(diabetes))) +
  geom_boxplot() +
  labs(title = "BMI vs Diabetes") +
  theme_classic()
