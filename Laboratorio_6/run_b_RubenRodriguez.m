clc;
clear;
close all;

funcion = @(x) 3*(sin((pi*x)/6))^2;
p_newton = @(x) 0+0.75*(x+0)+0.375*(x+0)*(x-1)-0.25*(x+0)*(x-1)*(x-2)+0.03125*(x+0)*(x-1)*(x-2)*(x-3);
p_lagrange = @(x) 0.0312*x^4- 0.4375*x^3 + 1.4688*x^2 - 0.3125*x^1 + 0;

grid on
hold on
%fplot(funcion,[-1 5],'r')
%fplot(p_newton,[-1 5],'b')
fplot(p_lagrange,[-1 5],'g')
grid off