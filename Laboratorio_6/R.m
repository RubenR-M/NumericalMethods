clc;
clear;
close all;

x = [0.75 0.72 0.70 0.68 0.67 0.66];
y = [5120 5370 5560 5800 6030 6240];

[c_L, p_L]= my_LagrangePolynomial_RubenRodriguez(x,y);

[p_N,coef]= my_NewtonPolynomial_RubenRodriguez(x,y);

for i=1:length(c_L)
    fprintf('Coeficientes Lagrange(%d): %f \n',i,c_L(i))
end

fprintf('Polinomio Lagrange:\n\n')
lagrange = inline(p_L);
for i=1:length(x)
   fprintf('y: %f \n',lagrange(x(i))) 
end    
disp(p_L);

fprintf('\nCoeficientes Newton:\n')
disp(coef);

fprintf('Polinomio Newton:\n\n')
disp(p_N);

