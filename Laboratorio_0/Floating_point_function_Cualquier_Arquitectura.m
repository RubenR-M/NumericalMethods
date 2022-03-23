%Codigo de los FLOTANTES
function []=Floating_point_function_Cualquier_Arquitectura()

clc;
clear;
close all;

numero = input('Ingrese el numero: ');
expo = input('Ingrese la cantidad de bits del exponete: ');
arquitectura = input('Ingrese la arquitectura: ');
exp='';

% Asignamos sign

if numero >= 0
    sign = '0';
else
    sign = '1';
    numero = numero*-1;
end

parte_decimal = numero - fix(numero);
resultado='';

for i=1:arquitectura
    parte_decimal = parte_decimal*2;
    if parte_decimal >= 1
       parte_decimal = parte_decimal - 1;
       resultado = strcat(resultado,'1');
    else
       resultado = strcat(resultado,'0');
    end
end

% Asignamos Exponent

exponente_1 = size(dec2bin(numero),2) - 1;
if (numero < 1 && numero ~= 0)
   resultado_aux = str2double(strcat('0.',resultado));
   while resultado_aux < 1
        exponente_1 = exponente_1 - 1;
        resultado_aux = resultado_aux*10;
   end
end
if numero == 1
   exp = strcat('0',dec2bin(exponente_1 + ((2^(expo-1))-(1))));
elseif numero == 0
    for i = 1:expo
       exp =strcat(exp,'0');
    end
else
   exp = strcat(dec2bin(exponente_1 + ((2^(expo-1))-(1))));
end

% Trabajamos la Mantissa

indice_arquitectura = arquitectura+1 - (size(exp,2)+size(sign,2));
if (numero < 1 && numero ~= 0)
    exp = strcat('0',exp);
    mantisa = strcat(resultado);
    mantisa_auxiliar = str2double(strcat('0.',resultado));
    i = 0;
    while mantisa_auxiliar < 1
        mantisa_auxiliar = mantisa_auxiliar*10;
        i = i + 1;
    end
    mantisa = mantisa(i+1:indice_arquitectura+i-2);
else
    mantisa = strcat(dec2bin(numero),resultado);    
    mantisa = mantisa(2:indice_arquitectura);
end

x = fprintf('Distribucion de los bits:\nsign: %d,expo: %d,mantisa: %d',size(sign,2),size(exp,2),size(mantisa,2));
disp(x)
num_float = strcat(sign,'-',exp,'-',mantisa);
disp(num_float)
end