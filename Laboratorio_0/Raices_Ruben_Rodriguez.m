% Codigo de las RAICES
function []= Raices_Ruben_Rodriguez()

clc;
clear;
close all;

a= input("ingrese a: ");
b= input("ingrese b: ");
c= input("ingrese c: ");

if b > 0 
    % Utilizamos la segundo forma
    raiz_1 = (2*c*-1)/(b+((b*b)-(4*a*c))^0.5);
    % Utilizamos la primer forma
    raiz_2 = (b*-1-(b*b - 4*a*c)^0.5)/(2*a);
else
    % Utilizamos la primer forma
    raiz_1 = (b*-1+(b*b - 4*a*c)^0.5)/(2*a);
    % Utilizamos la primer forma
    raiz_2 = (2*c*-1)/(b-((b*b)-(4*a*c))^0.5);
end

resultado = fprintf('Raiz 1: %d , Raiz 2: %s',raiz_1,raiz_2);
disp(resultado)
end