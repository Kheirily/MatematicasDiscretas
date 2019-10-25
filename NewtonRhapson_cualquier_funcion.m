clear all
close all
disp('N-R')
format long

#Inputs
f=input('Introduzca la funcion f(x):','s'); 
derivada=input('Introduzca la derivada de la funcion dy/dx:','s'); 
ini=input('Introduzca el punto de inicio:'); 
err=input('Porcentaje de error:');

#Transformación de formato String a función
derivada=inline(derivada);
f=inline(f);

eabs=100;
j=0;
while eabs>err
 #Aproximación de Raíz
 xi=ini-(f(ini)/derivada(ini));
 #Porcentaje de error
 eabs=abs(((xi-ini)/xi)*100);
 ini=xi;
 j=j+1;
end

#Imprime Resultados (3 cifras significativas)
fprintf('\nRaiz= %10.3f en %derivada Iteraciones',ini,j)

