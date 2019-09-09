clear all
close all
% IN1017 Matemáticas Discretas Combinatoria y Grafos
% Tarea 1
% Karin Momberg 20.318.401-8  

%valores iniciales
%Valor e predeterminado por octave
x = 0
deltax = 0.25;
Taylor = [];
Lagrange = [];

%Vectores & Matrices
ValorReal = [];
n = [0:0.25:5]

%Calculos y Aproximaciones
for i=0:0.25:5
Valor = e^i;  
ValorReal(end+1) = Valor;
t = 0;
l = 0;
e4 = 0;
  for j = 0:4
    t =  t + (i^j)/factorial(j);
    e4 = e4 + (1^j)/factorial(j);
    l = (i^(j+1))/factorial(j+1);
  endfor
  Taylor(end+1) = t;
  Lagrange(end+1) = l;
  E4 = e4^i;
  eCuarta(end+1) = E4;
endfor

hold on
plot(n,ValorReal, ";ex;");
plot(n,Taylor, ";p(x);")
plot(n,eCuarta, ";ex4;")
plot(n,ValorReal-Taylor, ";Err1;")
plot(n,ValorReal-eCuarta, ";Err2;")
plot(n,Lagrange, ";RL;")
legend("location", "southoutside", "orientation", "horizontal");
axis([0,5,-20,100])
title('Gráfico funciones', 'fontsize', 16)
grid on
print('xd.jpg')
hold off

