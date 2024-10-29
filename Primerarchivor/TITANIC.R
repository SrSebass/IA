Titanic<-read.table(file.choose())
#Nombres de la cabecera 
names(Titanic)

#Visualizamos las 6primeras lineas 
head(Titanic)

#Introducimos ruido en el 

#Dimensiones del data.frame
dim(Titanic)

#Eliminamos la 1 columna 
x<-seg(2,7,1)
Titanic<-Titanic´[,x]
head(Titanic)

ruido<-runif(dim(Titanic)[[1]],10,100)
ruido
Titanic$Precio<-Titanic$Precio+ruido

#Recuperando los datos
Titanic$Precio<-Titanic$Precio-ruido

#Ruido normal en la edad 
ruidoedad<-rnorm(dim(Titanic)[[1]],20,5)
ruidoedad
Titanic$Edad<-Titanic$Edad+ruidoedad
head(Titanic$Edad)
Titanic$Edad<-Titanic$Edad-ruidoedad
head(Titanic$Edad)

#Tratamiento del atributo survive 
#Buscamos las filas donde dicho atributo es no 
No<-which(Titanic$Survived=="No")
No
S<-rep(1,dim(Titanic)[[1]])
S[No]<-0
S
Titanic$Survived<-S
Titanic$Survived

#Introducimos ruido Poisson rpois(895,5)
Ruidosupervivencia<-rpois(891,5)
Titanic$Survived<-Titanic$Survived+Ruidosupervivencia
head(Titanic$Survived)

#Como nos ha quedado el data.frame
head(Titanic)

#Tratamientos de NA
x<-seq(1,100,1)
x<-append(x,rep('NA',20))
x<-append(x,seq(1,20,1))


#Omision de los NA
x<-na.ommit(x)

#Una alternativa consiste en sustituir los NA por la media en variables de titpo cuantitativo

#EJEMPLO
x<-rnorm(100,0,1)
x<-append(x,rep('NA',20))
x<-append(x,seq(1,20,1))

#Buscamos los NA
N<-which(is.na(x)==TRUE)
N

media<-mean(x[-N])
media

x[N]<-media
x
