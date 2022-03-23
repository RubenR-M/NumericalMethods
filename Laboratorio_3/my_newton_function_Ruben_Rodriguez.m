function [raiz] = my_newton_function_Ruben_Rodriguez(funcion,derivada,punto,error,iteraciones)

i = 0;
mostrar = fprintf("k: %d  x_k: %f  f(x_k): %d  f'(x_k): %d", i,punto,funcion(punto),derivada(punto));
disp(mostrar)
while i < iteraciones
    
    raiz = punto - funcion(punto)/derivada(punto);
    error_abs = abs(raiz - punto);
    
    mostrar = fprintf("k: %d  x_k: %f  f(x_k): %d  f'(x_k): %d error: %d", i , raiz ,funcion(raiz),derivada(raiz), error_abs);
    disp(mostrar)
    
    if error_abs < error
        break
    end
    
    punto = raiz;
    i = i + 1;
    
end

end