% Punto_b

clc;
clear;
close all;

% VARIABLES
funcion = @(x) x^3 - x -3;
punto_0 = 2;
punto_1 = 1.4;
iteraciones = 100;
error = 1*exp(-20);

% RESULTADO
raiz = my_visual_secant_function_Ruben_Rodriguez(funcion, punto_0, punto_1, iteraciones,error);

% PANTALLA
mostrar = fprintf('Raiz: %f',raiz);
disp(mostrar)