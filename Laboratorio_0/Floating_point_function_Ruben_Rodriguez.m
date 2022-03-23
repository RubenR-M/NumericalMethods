%Codigo de los FLOTANTES Arquitectura de 32
function [num_float]=Floating_point_function_Ruben_Rodriguez()

clc;
clear;
close all;

numero = input('Ingrese el numero: ');
expo = 8;

% Asignamos sign
if numero >= 0
    sign = '0';
else
    sign = '1';
    numero = numero*-1;
end

% Asignamos Exponent
exponente_1 = size(dec2bin(numero),2) - 1;
exp = dec2bin(exponente_1 + ((2^(expo-1))-(1))); 

% Trabajamos la Mantissa
parte_decimal = numero - fix(numero);
resultado='';

for i=1:100
    parte_decimal = parte_decimal*2;
    if parte_decimal >= 1
       parte_decimal = parte_decimal - 1;
       resultado = strcat(resultado,'1');
    else
       resultado = strcat(resultado,'0');
    end
end

mantisa = strcat(dec2bin(numero),resultado);
mantisa = mantisa(2:24);

num_float = strcat(sign,exp,mantisa);


