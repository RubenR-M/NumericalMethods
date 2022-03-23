function [resultado] = my_fixed_point_Ruben_Rodriguez(funcion,inicio,final,punto_inicial,iteraciones)

i = 1;
punto = punto_inicial;

while punto >= inicio && punto <= final
    
    punto_cambia = punto;
    punto = funcion(punto_cambia);
    
    mostrar = fprintf('Iteracion: %d, x: %d, g(x): %d\n',i,punto_cambia,punto);
    disp(mostrar)
    
    i = i+1;
    
    if abs(punto-punto_cambia)/abs(punto) <= 0.00000001 || i == iteraciones
        break;
    end
    
end

resultado = punto;

end