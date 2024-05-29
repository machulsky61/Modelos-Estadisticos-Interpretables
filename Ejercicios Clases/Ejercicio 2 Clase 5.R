install.packages("openintro")
require(openintro)
data(bdims,package="openintro")

library(ggplot2)

# Crear el diagrama de dispersión Peso Altura
ggplot(bdims, aes(x = hgt, y = wgt, color = factor(sex))) +
  geom_point() +
  scale_color_manual(values = c("blue", "red"), labels = c("Mujer", "Hombre")) +
  labs(x = "Altura (cm)", y = "Peso (kg)", color = "Género") +
  theme_minimal()

# Crear el diagrama de dispersión Peso Circunferencia de la cadera
ggplot(bdims, aes(x = hip_gi, y = wgt, color = factor(sex))) +
  geom_point() +
  scale_color_manual(values = c("blue", "red"), labels = c("Mujer", "Hombre")) +
  labs(x = "Circunferencia de la cadera (cm)", y = "Peso (kg)") +
  theme_minimal()