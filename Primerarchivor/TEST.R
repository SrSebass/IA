x<-rnorm(1000,6,1)
#Suponer que x es una muestra del gasto de combustible 
#de una marca en l/1000km
#Se desea contrastar si el gasto medio es lo mas 5 l/1000km

#Planteamiento del test 
#Ho: media<=5
#H1: media>5
#Se trata de un test unilateral izquierdo 
#Alternative es H1 ,greater es porque tiene que ser mas grande 
#conf.level es la confianza que tiene que tener de normal 95%

t.test(x,mu=5,alternative="greater",conf.level=0.95)

#Al ser p-value <2.2e-16 menor que 0.05 es H1 
#p-value <2.2e.16<0,05=>H1=>media>5
#-----------------------------------------------------------------------
#Se extrae una muestra de duracion de unas bombillas en años 
#de tamaño 10000 

x<-rexp(10000,2)

#El fabricante informa de su duracion e superior a 3 años 
#Constrastar dicha afirmacion 
#test
#Ho: media>3
#H1:media<3
t.test(x,mu=3,alternative="less",conf.level = 0.95)
#p-value <2.2e-16<0.05=>media<3

#Test para 2 muestras 
#Se extrae 2 muestras sobre el numero de km que se recorre con 1L de combustible
#En 2 marcas distintas

muestra1<-rnorm(1500,20,1)
muestra2<-rnorm(2000,18,2)
#Discutir si en media no hay diferencia entre las marcas 

#Ho:media1=media2
#H1:media1<>media2
t.test(muestra1,muestra2,alternative="two.sided",conf.level=0.95)
#Resultados

#media1=20.02874  media2=17.95900 
#Intervalo de confianza para la diferencia de medias 
#1.968565 2.170916
#p-value < 2.2e-16<0.05=>Acepto H1=> medias son disitntas 

#Comprobar que H1 es mayor que la media2
#Ho:media1<=media2
#H1:media1>media2
t.test(muestra1,muestra2,alternative="greater",conf.level =0.95)
#p-value < 2.2e-16<0.05=>Acepto H1 =>media1>media2

