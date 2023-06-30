library(tidyverse)
list.files()
setwd("C:\\Users\\erdav\\Desktop\\Diabetes")
data <- read.csv("diabetes_prediction_dataset.csv")

head(data)
str(data)

## Remover valor innecesario
data <- data %>%
  filter(gender != "Other")

## Distribucion de edades
ggplot(data, aes(x = age)) +
  geom_histogram(bins = 30, color = "black", aes(fill = after_stat(density))) +
  scale_fill_gradient(low = "blue", high = "red") +
  labs(title = "Age Distribution", x = "Age", y = "Count") +
  theme_classic()



## Distribucion Genero
ggplot(data, aes(x = gender, fill = gender)) +
  geom_bar() +
  scale_fill_manual(values = c("purple", "steelblue")) +
  labs(title = "Gender Distribution") +
  theme_classic()

## Comparacion de medias de daibetes con respecto a su BMI
ggplot(data, aes(x = factor(diabetes), y = bmi, fill = factor(diabetes))) +
  geom_boxplot() +
  labs(title = "BMI vs Diabetes") +
  theme_classic()
