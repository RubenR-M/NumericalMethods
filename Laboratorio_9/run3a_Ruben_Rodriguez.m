% IMPLEMENTING a
clc;
clear;
close all;

funcion = @(x) x*log(x);
a = 1;
b = 2;
m = 4;

integracion = my_trapezoidal_function_Ruben_Rodriguez(funcion,a,b,m);

fprintf('Resultado: %f \n',integracion)