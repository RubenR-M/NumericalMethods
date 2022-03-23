clc;
clear;
close all;

% x = [0 1 2 3 4];
% y = [];
x = [1 1.9 2.8 3.7 4.6 5.5 6.4 7.3 8.2 9.1 10];
y = [5 6 5.5 7 8.5 8 6 7 7 5 7];
funcion = @(x) 3*(sin((pi*x)/6))^2;

%for k=1:length(x)
%    y(k) = funcion(x(k));
%end

[c_L, p_L]= my_LagrangePolynomial_RubenRodriguez(x,y);

[p_N,coef]= my_NewtonPolynomial_RubenRodriguez(x,y);

fprintf('Coeficientes Lagrange:\n')
disp(c_L);

fprintf('Polinomio Lagrange:\n\n')
disp(p_L);

fprintf('\nCoeficientes Newton:\n')
disp(coef);

fprintf('Polinomio Newton:\n\n')
disp(p_N);

