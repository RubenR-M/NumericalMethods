clc;
clear;
close all; 

% VARIABLES
funcion = @(x) (x-8)*((x-3)^2);
a = 0;
b = 10;
iteraciones = 10;
 
raiz = my_visual_bisection_function_Ruben_Rodriguez(funcion, a, b, iteraciones);

% RESULTADO EN PANTALLA
mostrar = fprintf('Raiz: %d',raiz);
disp(mostrar)
