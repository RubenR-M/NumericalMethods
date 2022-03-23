function [A,B,C] = my_lsline_Ruben_Rodriguez(X,Y)

n = length(X);
x_2 = [];
x_y = [];
sumatoria_x = 0;
sumatoria_y = 0;
sumatoria_x_2 = 0;
sumatoria_x_y = 0;

for k = 1:n
    x_2(k) = X(k)^2;
    x_y(k) = X(k)*Y(k);
end

for i=1:n
    sumatoria_x = sumatoria_x + X(i);
    sumatoria_y = sumatoria_y + Y(i);
    sumatoria_x_2 = sumatoria_x_2 + x_2(i);
    sumatoria_x_y = sumatoria_x_y + x_y(i);
end

A = [sumatoria_x_2 sumatoria_x];
B = [sumatoria_x n];
C = [sumatoria_y sumatoria_x_y];

end