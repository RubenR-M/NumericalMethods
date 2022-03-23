clc;
clear;
close all;

% Output 􀀀 L=[H D E] : 
% H     i s the v e c t o r o f s t e p s i z e s
% D     i s the v e c t o r of approximate d e r i v a t i v e s
% E     i s the v e c t o r of e r r or bounds
% n     i s the c o o r d ina t e o f the " b e s t approimat ion "

funcion = @(x) 60*x^45 - 32*x^33 + 233*x^5 - 47*x^2 - 77; 
x = 1/(3)^0.5;
toler = 1*10^-15;

[L,n]=difflim(funcion,x,toler);

disp(L(10))
