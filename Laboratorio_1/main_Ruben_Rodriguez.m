% PUNTO FIJO
function []= main_Ruben_Rodriguez()

clc;
clear;
close all;

% FUNCIONES
funcion = @(x) (11*x^3 - 141*x^2 + 556*x - 546)/30; % cambiarla para cada funcion

% INTERVALO
inicio = input('Ingrese el inicio: ');
final = input('Ingrese el final: ');

% PUNTO_INICIAL
punto_inicial = input('Ingrese el punto inicial: ');

% CANTIDAD DE ITERACIONES
iteraciones = input('Ingrese la cantidad de iteraciones: ');

% FUNCION PUNTO FIJO
P = my_fixed_point_Ruben_Rodriguez(funcion,inicio,final,punto_inicial,iteraciones);

% GRAFICO
visual_verfication_Ruben_Rodriguez(funcion,inicio,final,P)

% RESULTADO
mostrar = fprintf('Resultado: %d',P);
disp(mostrar)

end