function [resultado] = my_finding_interval_Ruben_Rodriguez(funcion, a, b, iteraciones)

i = 1;

while i < iteraciones
    
   punto_medio = (a + b)/2;
   
   if funcion(a)*funcion(punto_medio) < 0  
       b = punto_medio;   
   elseif funcion(b)*funcion(punto_medio) < 0
       a = punto_medio;
   end    
   
   if funcion(a)*funcion(b) < 0
       break
   end
   
   i = i + 1;
   
end

resultado = [a b];

end