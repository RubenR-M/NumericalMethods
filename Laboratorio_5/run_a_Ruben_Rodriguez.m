
clc;
clear;
close all;

A = [1 1 0 4;2 -1 5 0;5 2 1 2;-3 0 2 6];

[L,U] = my_lu_Ruben_Rodriguez(A);
fprintf('-----------------------------------------------\n');
disp(L)
fprintf('-----------------------------------------------\n');
disp(U)
fprintf('-----------------------------------------------\n');
B = L*U;
disp(B)