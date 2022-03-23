% PROPOSING

% resolver lo propuesto en la imagen llamada proposing


clc;
clear;
close all;


fprintf('---------------------------------\n')

funcion = @(x) 3*x^2;
a = 0;
b = 2;
m = (b-a)/0.1;

integracion_trapecio = my_trapezoidal_function_Ruben_Rodriguez(funcion,a,b,m);
integracion_simpson = my_simpson_function_Ruben_Rodriguez(funcion,a,b,m);
fprintf('Resultado trapecio_rule: %f \nResultado simpson: %f \n',integracion_trapecio,integracion_simpson)
error_1 = abs(8 - integracion_trapecio);
error_2 = abs(8 - integracion_simpson);
fprintf('Error trapecio_rule: %f \nError simpson: %f \n',error_1,error_2)

fprintf('---------------------------------\n')

funcion = @(x) 1/(x-1)^0.5;
a = 2;
b = 3;
m = (b-a)/0.1;

integracion_trapecio = my_trapezoidal_function_Ruben_Rodriguez(funcion,a,b,m);
integracion_simpson = my_simpson_function_Ruben_Rodriguez(funcion,a,b,m);
fprintf('Resultado trapecio_rule: %f \nResultado simpson: %f \n',integracion_trapecio,integracion_simpson)
error_1 = abs(8 - integracion_trapecio);
error_2 = abs(8 - integracion_simpson);
fprintf('Error trapecio_rule: %f \nError simpson: %f \n',error_1,error_2)