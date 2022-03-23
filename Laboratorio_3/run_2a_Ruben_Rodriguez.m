clc;
clear;
close all;

% VARIABLES
funcion = @(x) 1000*exp(x*0.44725) + 435*((exp(x*0.44725)-1)/x) - 1564; % FUNCION
derivada_funcion = @(x) 1000*0.44725*exp(x*0.44725) + 435*((0.44725*x*exp(x*0.44725)-exp(x*0.44725))/x^2); % DERIVADA DE LA FUNCION
punto = 0.5;
error = 0;
iteraciones = 15;

% RESULTADO
raiz = my_newton_function_Ruben_Rodriguez(funcion, derivada_funcion,punto,error,iteraciones);

% RESULTADO EN PANTALLA
mostrar = fprintf('\nRaiz = %d',raiz);
disp(mostrar)
