% INTERPRETING

clc;
clear;
close all;

funcion = @(x) (1/(2*pi)^0.5)*exp((-x^2)/2);
a = 0;
b = [1 2 3 4 5];
m = 5;

for i=1:length(b)
integracion_trapecio = my_trapezoidal_function_Ruben_Rodriguez(funcion,a,b(i),m);
integracion_simpson = my_simpson_function_Ruben_Rodriguez(funcion,a,b(i),m);
fprintf('Resultado trapecio_rule: %f \nResultado simpson: %f \n',integracion_trapecio,integracion_simpson)
end

