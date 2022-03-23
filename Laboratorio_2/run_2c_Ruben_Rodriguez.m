clc;
clear;
close all; 

% VARIABLES
funcion = @(x) (x-8)*((x-3)^2);
a_inicial = 2;
b_inicial = 4;
iteraciones = 100;

a = 0;
b = 10;

% RESULTADO
for i=1:5
    error = 1*exp(-2*i);
    raiz = my_bisection_function_Ruben_Rodriguez(funcion, a, b, iteraciones,error);
    raiz_2 = my_bisection_function_Ruben_Rodriguez(funcion, a_inicial, b_inicial, iteraciones,error);
    disp('-----------------------------------------------------------')
    hold on
    plot(error,raiz(2)+1,'k*')
    plot(error,raiz_2(2)+1,'k.')
    hold off
    grid on
end

% RESULTADO EN PANTALLA
mostrar = fprintf('Raiz: %d, Raiz: %d',raiz(1), raiz_2(1));
disp(mostrar)

