function [resultado] = my_heun_function_Ruben_Rodriguez(funcion,a,b,y_0,M)


y = [];
h = (b - a)/M;
xs = a:h:b;
y(1) = y_0;
disp(' i       x          y');

for i=1:M+1
    x = xs(i);
    yy = y(i);
    x1 = (xs(i)+((2/3)*h));
    k1 = feval(funcion,x,yy);
    y2 = (y(i)+((2/3)*h)*k1);
    k2 = feval(funcion,x1,y2);
    y(i+1) = y(i) + (h/4)*(k1+3*k2);  
    fprintf('\n%2.0f %10.6f %10.6f',i,xs(i),y(i));
end
fprintf('\n\n');
resultado = y(i);

end

