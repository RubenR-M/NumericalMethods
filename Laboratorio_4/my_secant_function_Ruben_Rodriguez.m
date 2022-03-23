% METODO SECANTE
function [raiz] = my_secant_function_Ruben_Rodriguez(funcion, punto_0, punto_1, iteraciones,error)

i = 0;

while i < iteraciones
    
    punto_2 = punto_1 - funcion(punto_1)*(punto_1 - punto_0)/(funcion(punto_1) - funcion(punto_0));
    
    mostrar = fprintf('ite: %f  punto_0: %f  punto_1: %f  punto_2: %f',i,punto_0,punto_1,punto_2);
    disp(mostrar)
    mostrar = fprintf('ite: %f  f(punto_0): %f  f(punto_1): %f  abso: %f',i,funcion(punto_0),funcion(punto_1),abs(punto_1-punto_0));
    disp(mostrar)
    
    punto_0 = punto_1;
    punto_1 = punto_2;
     
    if abs(punto_1 - punto_0) < error || funcion(punto_1) - funcion(punto_0) == 0
        break
    end
    
    i = i + 1;
    
end

raiz = punto_2;

end