
a<-7
b<-2
inverso<-function(clave,n){
	i<-1
while (i<n && (i*clave) %%n!=1){
		i<-i+1
	}
	return(i)
	}

codificar<-function(x,a,b,n){
	y<-(a*x+b)%%n
	return(y)
}

decodificar<-function(y,a,b,n){
	x<-(inverso(a,n)*(y-b))%%n
	return(x)
}

Alfabeto<-c('A','B','C','D','E','F','G','H','I','J','K','L','M','N','Ñ','O','P',
'Q','R','S','T','U','V','W','X','Y','Z')

C<-'E'

#Funcion que encripta un caracter

Encriptar<-function(a,b,Caracter,Alfabeto){
n<-length(Alfabeto)
x<-which(Alfabeto==Caracter)-1
y<-codificar(x,a,b,n)
y<-y+1
return(Alfabeto[[y]])
}

#Codificamos un String

Inicial<-c('S','E','X','O')
Final<-c()
i<-1
while(i<=length(Inicial)){
	D<-Encriptar(a,b,Inicial[[i]],Alfabeto)
	Final<-append(Final,D)
	i<-i+1}
	Final

#Decodificar un String

Dec<-c()
while(i<=length(Final)){
D<-Desencriptar(a,b,Final[[i]],Alfabeto)
Dec<-append(Dec,D)
i<-i+1}


#Funcion desencriptar un caracter 

Desencriptar<-function(a,b,Caracter,Alfabeto){
	n<-length(Alfabeto)
	y<-which(Alfabeto==Caracter)-1
	x<-decodificar(y,a,b,n)
	x<-x+1
	return(Alfabeto[[x]])
	}


#Simulacion de ncriptar y desencriptar

Dec<-c()
i<-1
while(i<=length(Final)){
	D<-Desencriptar(a,b,Final[[i]],Alfabeto)
	Dec<-append(Dec,D)
	i<-1+1
}

Dec




