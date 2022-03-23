function [resultado] = my_bisection_function_Ruben_Rodriguez(funcion, a, b, iteraciones,error_establecido)

i = 0;
e = error_establecido;
a_aux = a;
b_aux = b;

while i < iteraciones 
      
   punto_medio = (a + b)/2;
   error = (b_aux - a_aux)/2^(i+1);
   
   mostrar = fprintf('i: %f, a: %f, b: %f, c: %f,F(a): %f, F(b): %f, F(c): %f, error: %f',i,a,b,punto_medio,funcion(a),funcion(b),funcion(punto_medio),error);
   disp(mostrar)
   
   if funcion(a)*funcion(punto_medio) < 0  
       b = punto_medio;   
   elseif funcion(b)*funcion(punto_medio) < 0
       a = punto_medio;
   end    
   
   if error < e
      break 
   end
     
   i = i + 1; 
   
end

resultado = [punto_medio i];

end
