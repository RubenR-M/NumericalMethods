% Punto_a

clc;
clear;
close all;

% VARIABLES
funcion = @(x) (5+0.245/x^2)*(x-0.0266)-28.721;
punto_0 = 35;
punto_1 = 30;
iteraciones = 100;
error = 1*10^-5;

% RESULTADO
raiz = my_secant_function_Ruben_Rodriguez(funcion, punto_0, punto_1, iteraciones,error);

% MOSTRAR EN PANTALLA
fprintf('Raiz: %f\n', raiz);
