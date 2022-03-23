function [resultado] = 	my_euler_function_Ruben_Rodriguez(funcion,a,b,y_0,M)

x = a;
xf = b;
y = y_0;
h = (xf-x)/M;
disp('i       x           y');

for i=1:M+1
    y1 = feval(funcion,x,y);
    hy1 = h*y1;
    fprintf('\n%2.0f %10.6f %10.6f',i,x,y)
    y = y + hy1;
    x = x + h;
end

fprintf('\n%2.0f %10.6f %10.6f\n',i+1,x,y)
resultado = y;

end

