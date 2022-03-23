% INTERPRETING
clc;
clear;
close all;

X = [57.91 108.7 149.6 227.92 778.57 1433.53 2872.46 4495.06];
Y = [87.97 224.7 365.26 686.98 4332.59 10759.22 30685.4 60189.00];

[A,B,C] = my_lsline_Ruben_Rodriguez(X,Y);

a = (C(2) - (B(1)*C(1)/B(2)))/(A(1)-(B(1)^2/B(2)));
b = (C(1)/B(2))-a*(B(1)/B(2));

hold on
fprintf('y = %f*x + %f \n',a,b)
minimo = min(X);
maximo = max(X);
funcion = @(x) a*x + b;
plot(X,Y,'ro')
fplot(funcion,[minimo maximo],'b')