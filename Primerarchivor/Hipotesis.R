Combinatorio<-function(a,b){
  f<-factorial(a)/(factorial(b)*factorial(a-b))
  return(f)
}

F<-function(N,D,n,r){
  x<-Combinatorio(D,r)*Combinatorio(N-D,n-r)/Combinatorio(N,n)
return(x)}

#Se desea conocer el numero de ejemplares de una especie 
#Para ello se extraen y se marcan 
N<-30
#Se depositan con el resto y se mezclan 
#Se extraen 
n<-10
#y se observan 
r<-1
#Defectuosa 
#Estimar D
D<-1
Siguiente<-2

vector<-c(F(N,D,n,r))

while (F(N,D,n,r)<=F(N,Siguiente,n,r)) {
  D<-Siguiente
  Siguiente<-Siguiente+1
  vector<-append(vector,F(N,D,n,r))}

 D
 
 plot(vector)
 
 
----------------------------------------------------------------
   
#Se desea conocer el numero de piezas defectuosas en una produccion 
   N<-30
 
 #Desconocemos  D= N de defectuosos 
 --------------------------------------------------------------------
 #Test de Hipotesis Bilateral 
 #Extraemos una muestra 
   
   x<-rpois(500,3)
 
 #Hipotesis
 #Nula  Ho: media=4
 #Alternativa H1:media<>4
 
 t.test(x,mean=4,alternative = "two.sided",conf.level = 0.98)
 
#Estimacion puntual de la media :2.88
 
 #Intervalo de confianza al 98%
 # 2.807407 3.168593
 
 #p-valor<0.02=>Acepto H1

