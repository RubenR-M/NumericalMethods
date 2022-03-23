% Codigo de las SUMATORIAS
% Punto 1.a

clc;
clear;
close all;

s_a_teo = sum(1./(3.^(1:6)),3);
s_a_exp = sum(round(1./(3.^(1:6)),3));
error_1 = abs((s_a_teo - s_a_exp)/s_a_teo);

% Punto 1.b
s_b_teo = sum(1./(3.^(7-(1:6))),3);
s_b_exp = sum(round(1./(3.^(7-(1:6))),3));
error_2 = abs((s_b_teo - s_b_exp)/s_b_teo);

x = sprintf('resultado:%s, error:%s',s_a_exp,error_1);
y = sprintf('resultado:%s, error:%s',s_a_exp,error_1);

disp(x)
disp(y)