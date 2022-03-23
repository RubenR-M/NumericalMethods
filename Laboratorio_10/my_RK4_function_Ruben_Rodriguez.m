function [resultado] = my_RK4_function_Ruben_Rodriguez(funcion,a,b,y_0,M)

xi = a;
xf = b;
yi = y_0;
h = (xf-xi)/M;
xs = xi:h:xf;

disp(' i       x          y');

for i=1:M+1
    xi = xs(i);
    x = xi;
    y = yi;
    k1 = h*feval(funcion,x,y);
    x = xs(i);
    y = yi + k1;
    k2 = h*feval(funcion,x,y);
    x = xs(i);
    y = yi + k2;
    k3 = h*feval(funcion,x,y);
    x = xs(i);
    y = yi + k3;
    k4 = h*feval(funcion,x,y);
    yi = yi + (k1 + 2*k2 + 2*k3 + k4)/6;
    fprintf('\n%2.0f %10.6f %10.6f',i,xi,yi);
end

fprintf('\n El punto aproximado Y(xf) = %8.6f\n',yi)
resultado = yi;
end