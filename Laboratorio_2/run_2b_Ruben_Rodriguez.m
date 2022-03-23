% Script para hallar la raiz

clc;
clear;
close all; 

%(tan(x))^2 - x
% x^2 + 4*x + 4
% x*sin(x) - 1
% (x-8)*(x-3)^2

% VARIABLES
funcion = @(x) (pi*x^2*(45-x))/3 - 2871*pi;
a = 17.6;
b = 18;
iteraciones = 100;
error = 1*10^-15;


% RESULTADO
raiz = my_bisection_function_Ruben_Rodriguez(funcion, a, b, iteraciones,error);

% RESULTADO EN PANTALLA
mostrar = fprintf('Raiz: %d',raiz(1));
disp(mostrar)

