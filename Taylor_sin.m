clear all
close all
format long g
#Variables Iniciales:
x = a; #Ángulo
Taylor = 0;
k = #Valor de prueba para llegar al error. (para testeo)
for i=0:k
  Taylor = Taylor + (((-1)^(i))*((x)^((2*i)+1)))/factorial((2*i)+1);
  Lagrange = (((-1)^(i+1))*((x)^((2*i)+3)))/factorial((2*i)+3);
endfor
Valorsin = Taylor #Valor Taylor
Errorsin = Lagrange #Resto de Lagrange




