clc;
clear;
close all; 

% VARIABLES
funcion = @(x) exp(x)*(1500-475/x)-475/x-2264;
a = 0.01;
b = 1;
iteraciones = 10;
 
raiz = my_visual_bisection_function_Ruben_Rodriguez(funcion, a, b, iteraciones);

% RESULTADO EN PANTALLA
mostrar = fprintf('Raiz: %d',raiz);
disp(mostrar)
