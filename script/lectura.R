# Lectura de datos desde web ISCIII
covid_historico <- read.csv("https://covid19.isciii.es/resources/serie_historica_acumulados.csv")
# Se eliminan las dos últimas filas con comentarios
covid_es <- covid_historico[1:(nrow(covid_historico)-2),]
covid_es$Fecha <- as.Date(covid_es$Fecha,"%d/%m/%y")
