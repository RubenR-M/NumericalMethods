%DECIMALES A BINARIO
function []= Binario()

clc;
clear;
close all;

numero = input('Ingrese el numero: ');
precision_decimal = input('Ingrese la cantidad de decimales que quiere: ');

parte_entera = dec2bin(numero);
parte_decimal = numero - fix(numero);

if parte_decimal ~= 0
    resultado='.';
else
    resultado='';
end

if parte_decimal ~= 0
    for i=1:precision_decimal
        parte_decimal = parte_decimal*2;
        if parte_decimal >= 1
           parte_decimal = parte_decimal - 1;
           resultado = strcat(resultado,'1');
        else
           resultado = strcat(resultado,'0');
        end
    end
end

binario = strcat('Decimal:',string(numero),',Binario:',parte_entera,resultado);
disp(binario)

end