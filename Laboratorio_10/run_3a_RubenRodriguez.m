clc;
clear;
close all;

funcion = @(x,y) exp(-2*x) - 2*y;
a = 0;
b = 1;
y_0 = 1/10;
M = 10;
E = my_euler_function_Ruben_Rodriguez(funcion,a,b,y_0,M);
