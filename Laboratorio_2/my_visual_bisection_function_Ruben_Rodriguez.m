function [resultado] = my_visual_bisection_function_Ruben_Rodriguez(funcion,a,b,iteraciones)

i = 0;

fplot(funcion,[a-0.1 b+0.1],'b')
hold on
grid on

while i < iteraciones 
      
   punto_medio = (a + b)/2;
   plot(a,0,'ko')
   plot(b,0,'ko')
   plot(punto_medio,0,'k*')
   mostrar = fprintf('i: %d, a: %d, c: %d, b: %d, F(c): %d',i,a,punto_medio,b,funcion(punto_medio));
   disp(mostrar)
   
   if funcion(a)*funcion(punto_medio) < 0  
       b = punto_medio;   
   elseif funcion(b)*funcion(punto_medio) < 0
       a = punto_medio;
   end    
 
   i = i + 1; 
   
end

resultado = punto_medio;
end

