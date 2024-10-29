muestra<-rnorm(200,10,2)
muestra

#Histograma 

par(mfrow=c(2,2))

hist(muestra,freq=FALSE)

plot(density(muestra))

plot(ecdf(muestra))

boxplot(muestra)
