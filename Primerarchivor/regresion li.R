#Cabecera de x1
head(X1)
#Cabecera de X2
head(X2)
#Longitud de X2
length(X2)
#Cabecera Y 
head(Y)
#Longitud X1
length(Y)

#Estudiamos una regresion lineal 
#Con variables  explicativas X1
#Variable explicada Y

modelo<-lm(Y~X1+X2)