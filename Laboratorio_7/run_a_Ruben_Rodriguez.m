% IMPLEMENTING

clc;
clear;
close all;
x = [-8 -2 0 4 6];
y = [6.8 5.0 2.2 0.5 -1.3];

[A,B,C] = my_lsline_Ruben_Rodriguez(x,y);

a = (C(2) - (B(1)*C(1)/B(2)))/(A(1)-(B(1)^2/B(2)));
b = (C(1)/B(2))-a*(B(1)/B(2));

hold on
fprintf('y = %f*x + %f \n',a,b)
minimo = min(x);
maximo = max(x);
funcion = @(x) a*x + b;
plot(x,y,'ro')
fplot(funcion,[minimo maximo],'b')
