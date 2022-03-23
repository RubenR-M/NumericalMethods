
clc;
clear;
close all;

% ASIGNACIONES
A = [1 2 -3 4;4 8 12 -8;2 3 2 1;-3 -1 1 -4];
B = [3;60;1;5];

% RESULTADOS
[L,U] = my_lu_Ruben_Rodriguez(A);

% OPERACIONES
% TENEMOS QUE RESOLVER ---> A*X = B
disp(L)
disp(U)

z = inv(L)*B;
X = inv(U)*z;

disp(X)