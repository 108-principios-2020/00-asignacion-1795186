
# tarea 2 resumen de datos ------------------------------------------------

# salvador garcia martinez_1795186 ----------------------------------------

# 19/02/2020 --- 20/02/2020 -----------------------------------------------



library(plyr)
accidentes <- c(0,1,2,2,1,4,3,0,1,5,1,2,3,4,0,1,1,3,4)     
acc <- count(accidentes) 
acc

(acc$freq/sum(acc$freq)*100)
acc$rf <- acc$freq/sum(acc$frep)*100   
acc

barplot(acc$freq, names.arg = acc$x, main =" Accidentes en el aserradero",
        col = "red")


# ¿cual es el promedio de accidentes del mes? -----------------------------
mean(accidentes)
sum(accidentes)
boxplot(accidentes)


# ¿Que numero de accidentes reporta la mayor proporcion? ------------------ 

# en la grafica se reporta 6 meses con un solo accidente. 



# Ejercicio 2 -------------------------------------------------------------

especies <- c("F", "H", "F", "C", "F", "A", "H", "F",
              "H", "C", "A", "C", "F", "H", "H", "H",
              "F", "H", "A", "C", "F", "H", "H", "F")
esp <- count(especies)

esp

(esp$freq/sum(esp$freq)*100)
esp$rf <- esp$freq/sum(esp$freq)*100
esp


# ¿Que especie presenta mayor proporcion (anote su %)? --------------------

# en la grafica la especie que representa mayor proporcion es la Tsuga heterofila con porsentaje de 37.5%

barplot(acc$freq, names.arg = acc$x, main ="cantidad de especies",
        col = "blue")

# ejercicio3 --------------------------------------------------------------

library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

vecyesp <- table(conjunto$vecinos,conjunto$especies)
vecyesp   


# Ejercicio 4 -------------------------------------------------------------

altura <- conjunto$Altura
range(altura)


Intervalo <- seq(8, 21, by=3)
Intervalo

altura.table <-cut(altura, Intervalo)
table(altura.table)


# Ejercicio 5 -------------------------------------------------------------

Diametro <- conjunto$Diametro
range(Diametro)


Intervalo <- seq(7.5, 25.5, by=2.5)
Intervalo

par(mfrow=c(1,2))
hist(conjunto$Diametro, col = "blue",   main = "Sin modificar", xlab = "Diametro")
hist(conjunto$Diametro, breaks = Intervalo, col = "purple",   main = "Datos intervalos")
par(mfrow=c(1,1))


