clc;
clear;
close all;

% Output 􀀀 L=[H D E] : 
% H     i s the v e c t o r o f s t e p s i z e s
% D     i s the v e c t o r of approximate d e r i v a t i v e s
% E     i s the v e c t o r of e r r or bounds
% n     i s the c o o r d ina t e o f the " b e s t approimat ion "

funcion = @(x) sin(x^3 -7*x^2 + 6*x + 8); 
x = (1 - 5^0.5)/2;
toler = 1*10^-15;

[L,n]=difflim(funcion,x,toler);

disp(L(10))
