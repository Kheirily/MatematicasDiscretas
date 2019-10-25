clear all
close all
#Datos: Tabla1
X = [0, pi/6, pi/4, pi/3, pi/2];
Y = [0, 0.5000000000202799, 0.7071067811796194, 0.8660254037859597, 0.9999999999939768];
##
x = [0:0.01:pi/2] #Rango de x
y = 0.029*x.^4 - 0.20525*x.^3 + 0.02249*x.^2 + 0.99522*x #Polinomio de interpolación
#Plot
hold on
plot(x,y, ";sin(x) (p(x));" , 'Color', 'magenta');
plot(X,Y, ";sin(x) (Taylor);", 'Color', 'green');
xlabel("x (radianes)");
ylabel('y (valores sin(x))');
legend("location", "southoutside", "orientation", "horizontal");
title('Polinomio de Lagrange vs Polinomio de Taylor');
axis([0,pi/2,0,1]);
grid minor on
print("interpol.jpg")
hold off

