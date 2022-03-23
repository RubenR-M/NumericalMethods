
clc;
clear;
close all;

% ASIGNACIONES
A = [1 1 1;3 2 1;4 3 1];
B = [60;95;125];

% RESULTADOS
[L,U] = my_lu_Ruben_Rodriguez(A);

% OPERACIONES
% TENEMOS QUE RESOLVER ---> A*X = B
fprintf('L\n')
disp(L)
fprintf('U\n')
disp(U)

fprintf('Solucion\n')
z = inv(L)*B;
X = inv(U)*z;

disp(X)