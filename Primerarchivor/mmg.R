#Construyo un vector del 1 al 20 
x<-seq(1,20,1)
Sexo<-rep("V",5)
Sexo<-append(Sexo,rep("M",10))
Sexo<-append(Sexo,rep("M",5))
Sexo

#Veamos que la longitud de cada vector es la misma 
length(x)
length(Sexo)
#Construimos un data frame con estas 2 columnas
#La 1 representa edad y la 2 sexo 

tabla<-data.frame(Edad=x, Sexo=Sexo)
#Calculamios las dimensiones del data.frame 

dim(tabla)
#Nombres de las columnas 
names(tabla)
#Veamos que la tabla la trata con un data frame o base 
class(tabla)
#Primeras 6 filas del data.frame o cabecera 
head(tabla)

#Operaciones de busqueda.Buscar las filas 
Varon<-which(tabla$Sexo=="V")
Varon

#Deseamos acceder a las filas donde solo son mujeres 
tabla[-Varon,]

#Escribir el data.frame en un archivo en disco duro 
write.table(tabla,file="C:\\Users\\Admin25\\Desktop\\Primerarchivor\\Primer.csv",sep=";")

#Leer data frame 
datos<-read.table(file.choose(),header=TRUE,sep";")

names(datos)

class(datos$id)
class(datos$Edad)
class(datos$Sexo)

#Quitamos la 1 columna
x<-c(2,3)
datos<-datos[,x]
datos

#Muestreo aleatorio o independiente

#Muestra de una uniforme U (0,1) de tamaño 200


muestrauniforme<-runif(200,0,1)
muestrauniforme

#Muestra de una N(20,3) de tamaño 500 
muestranormal<-rnorm(500,20,3)
head(muestranormal)

#Muestra de tamaño 100 de X-bin(5,0.8)
muestrabinomial<-rbinom(100,5,0.8)
muestrabinomial

#Muestra de Poisson
muestrapoisson<-rpois(200,3)
muestrapoisson

muestrabinomial<-dbinom(4,5,0.8)
muestrabinomial

muestrabinomial<-pbinom(4,5,0.8)
muestrabinomial

muestrabinomial<-dpois(6,5)
muestrabinomial

muestrabinomial<-ppois(6,5)
muestrabinomial

muestrabinomial<-1-ppois(7,5)
muestrabinomial

Embarazos<-pnorm(280,270,15)
Embarazos

Embarazos<-pnorm(275,270,15)-pnorm(250,270,15)
Embarazos

Embarazos<-1-pnorm(285,270,15)
Embarazos

#Boxplot de muestrapoisson
#Q1
Q1<-quantile(muestrapoisson,0.25)
Q1

Q2<-quantile(muestrapoisson,0.5)
Q2

boxplot(muestrapoisson)
summary(muestrapoisson)

#Distribucion empirica acumulada



