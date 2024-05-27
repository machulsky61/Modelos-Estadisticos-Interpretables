# Cargar los datos
data <- read.table("low birth weight infants.txt", header = TRUE)

# Ajuste del modelo lineal simple para explicar headcirc con momage
lm_model <- lm(headcirc ~ momage, data = data)
summary(lm_model)

# Ajuste del modelo lineal múltiple con toxemia y gestage
lm_model_multiple <- lm(headcirc ~ toxemia + gestage, data = data)
summary(lm_model_multiple)

# Grafico headcirc versus gestage
plot(data$gestage, data$headcirc, col = ifelse(data$toxemia == 1, "red", "blue"), pch = 16,
     xlab = "gestage", ylab = "headcirc", 
     main = "Head Circumference vs Gestational Age")
# Superponer los valores predichos en colores celeste y rosa según toxemia
points(data$gestage, lm_model_multiple$fitted.values, col = ifelse(data$toxemia == 1, "pink", "lightblue"), pch = 16)
legend("topright", legend = c("Sin Toxemia", "Con Toxemia"), col = c("blue", "red"), pch = 16, bty = "n")