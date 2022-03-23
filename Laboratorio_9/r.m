% PROPOSING

% resolver lo propuesto en la imagen llamada proposing


clc;
clear;
close all;


fprintf('---------------------------------\n')

funcion = @(x) -(291406250/1977006755367)*x^10 + (15644140625/1977006755367)*x^9 - (40535312500/219667417263)*x^8 + (3235335859375/1318004503578)*x^7 - (15492387518125/753145430616)*x^6 + (56806143989375/502096953744)*x^5 - (4347411302342375/10544036028624)*x^4 + (10322006231201375/10544036028624)*x^3 - (5059374576659269/3514678676208)*x^2 + (18523484170873711/15816054042936)*x - (109628435829518/282429536481);
a = 1;
b = 10;
m = 10;

integracion_trapecio = my_trapezoidal_function_Ruben_Rodriguez(funcion,a,b,m);
integracion_simpson = my_simpson_function_Ruben_Rodriguez(funcion,a,b,m);
fprintf('Resultado trapecio_rule: %f \nResultado simpson: %f \n',integracion_trapecio,integracion_simpson)
error_1 = abs(8 - integracion_trapecio);
error_2 = abs(8 - integracion_simpson);
fprintf('Error trapecio_rule: %f \nError simpson: %f \n',error_1,error_2)

fprintf('---------------------------------\n')
