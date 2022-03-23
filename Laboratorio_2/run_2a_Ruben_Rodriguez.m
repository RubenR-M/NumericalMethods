% Script para hallar el intervalo

clc;
clear;
close all;

% VARIABLES
funcion = @(x) (tan(x))^2 - x;
a = 1.8;
b = 2.4;
iteraciones = 6;

% RESULTADO
intervalo = my_finding_interval_Ruben_Rodriguez(funcion,a,b,iteraciones);

% RESULTADO EN PANTALLA
mostrar = fprintf('[a:%d b:%d]',intervalo(1),intervalo(2));
disp(mostrar)