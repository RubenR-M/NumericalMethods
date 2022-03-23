function [resultado] = my_simpson_function_Ruben_Rodriguez(funcion,a,b,m)

n = 2*m;
resultado = 0;
h=(b-a)/n;

for i=1:m
   resultado = (h/3)*(funcion(a)+ 4*funcion(a+h) + funcion(a+2*h)) + resultado; 
   a = a+2*h;
end    
end

