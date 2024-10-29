y<-"Edad"
z<-toupper(y)
x<-strsplit(z,split="")

x[[1]][[3]]
#cONSIDERO EL ALFABETO
A<-LETTERS
A
#Cargamos el archivo
tabla<-read.table(file.choose(),header=TRUE,sep ="",stringsAsFactors =FALSE)
#Consultamos la cabecera 
head(tabla)
#Eliminamos la 1 columna por ser indentificador
tabla<-tabla[,-1]
names(table)
z<-toupper(names(tabla)[[3]])
x<-strsplit(z,split ="")

length(A)

#Ecuacion de cifrado s<-3*w+5
#Inicializo los nuevos nombres a un vector vacio 

#Comenzamos la codificacion de un nombre 
cod<-c()
i<-1
while(i<=length(x[[1]])){
  #Buscmaos la posicion de cada letra del nombre en Alfabeto
  w<-which(A==x[[1]])
  #Codificamos
  s<-(-3*w+5)%% length(A)
  s<-s+1
  #Añadimos el caracter codificado 
  cod<-append(cod,A[[s]])
  i<-i+1}

#Pegamos las letras para formar un nuevo nombre 
C<-paste(cod,collapse="")
#Loañadimos a la lista de nombres 
nombres<-
tabla$"OPIKU"<-tabla[,2]
tabla<-tabla[,-2]
head(tabla)

#Sustituir los nombres reales de la cabecera por su nombres codificados 
j<-1

while (j<=length(nombres)) {
  names(tabla)[[j]]<-nombres[[j]]
  j<-j+1
  
  #Comprobar que los nombres han sido cambiados
  head(tabla)
}
 >nombres

#Generamos una permutacion 6 elementos 
Numeros<-seq(1,6,1)
Numeros
P<-sample(Numeros,6,replace=FALSE)
#Hacemos una copia del data.frame
tabla1<-tabla

#Cada columna de tabla1 se 
k<-1
while(k=dim(tabla)[[2]]){
  tabla1[,k]<-tabla[,P[[k]]]
  k<-k+1
  tabla<-tabla1
  head(tabla)
  
#Preparacio para el ruido 
#Dicotizamos OPIKU
  
  Zeros<-which(tabla[,2]=="No")
  Unos<-which(tabla[,2]=="Si")
  tabla[Zeros,2]<-0
  tabla[Unos,2]<-1
  head(tabla)
  
  #Dicotomizamos BHUOGY
  Male<-which(tabla[,6])=="male"
  Female<-which(tabla[,6]=="female")
  tabla[Male,6]<-0
  tabla[Female,6]<-1
  head(tabla)
  
  #iNTRODUCIMOS RUIDO UNIFORME
  ruido1<-runif(dim(tabla)[[1]])
  tabla[,1]<-tabla[,1]+ruido1
  head(tabla)
}

#Proceso de reconstruccion 
