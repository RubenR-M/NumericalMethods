% Punto_c

clc;
clear;
close all;

% VARIABLES

% Para este punto simplemente se uso la funcion  Y(t)
funcion = @(x) (4425.671109)*(1 - exp(-x/10)) - 320*x;
distancia = @(x) (1028.46075)*(1 - exp(-x/10));
punto_0 = 6.3;
punto_1 = 5;
iteraciones = 100;
error = 1*exp(-20);

% RESULTADO
raiz = my_secant_function_Ruben_Rodriguez(funcion, punto_0, punto_1, iteraciones,error);
my_visual_secant_function_Ruben_Rodriguez(funcion, punto_0, punto_1, iteraciones,error);

% MOSTRAR EN PANTALLA
fprintf('Tiempo: %f\n', raiz);
