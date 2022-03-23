clc;
clear;
close all;

% VARIABLES
funcion = @(x) x^3 + 13*x^2 -297.5*x + 0.00000375*exp(x); % FUNCION
derivada_funcion = @(x) 3*x^2 + 26*x - 297.5 + 0.00000375*exp(x); % DERIVADA DE LA FUNCION
punto = 10;
iteraciones = 100;

% GRAFICO

my_visual_newton_function_Ruben_Rodriguez(funcion,derivada_funcion,punto,iteraciones)