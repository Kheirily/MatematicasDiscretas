clear all
close all

#Valores iniciales:
h = sqrt(3)/3; #Hint
r = [0:18]; #Rango de x
Taylor = 0;
TaylorV = []; #Vector valores de pi.
Lagrange = 0;
LagrangeV = []; %Vector error de pi.
for i=0:18
  #Expansión de Taylor:
  Taylor = (Taylor + ((-1)^i)*(h^((2*i) + 1)/((2*i) + 1))); 
  #Valor de pi:
  Pi = 6*Taylor; #se multiplica por 6 (por pi/6).
  TaylorV(end+1) = Pi;
  #Resto de Lagrange
  Lagrange = (((-1)^(i+1))*(h^((2*(i+1)) + 1)/((2*(i+1)) + 1)));
  #error de pi
  ePi = 6*Lagrange; #se multiplica por 6 (por pi/6).
  LagrangeV(end+1) = ePi;
endfor
hold on
plot(r,TaylorV, ';\pi (Taylor);', 'Color', 'magenta');
plot(r,LagrangeV, ';\delta\pi (Error Lagrange);', 'Color', 'green');
xlabel("r° Iteraciones");
ylabel('Resultados');
axis([0,18,-1,4])
legend("location", "southoutside", "orientation", "horizontal");
title('\pi(r) vs \delta\pi(r)');
grid minor on;
print("GrafoPi.jpg")
hold off


