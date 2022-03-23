
clc;
clear;
close all;

% ASIGNACIONES
A = [10 15 40;1 -1 -1;0 1 -2];
B = [300;0;0];

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