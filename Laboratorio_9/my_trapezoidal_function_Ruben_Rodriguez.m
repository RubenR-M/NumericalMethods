function [resultado] = my_trapezoidal_function_Ruben_Rodriguez(funcion,a,b,m)

h = (b-a)/m;
resultado = 0;
for i=1:m
   resultado = (h/2)*(funcion(a+(i-1)*h)+funcion(a+(i)*h))+resultado; 
end
end

