% COMPORTAMIENTO DEL METODO SECANTE
function [raiz] = my_visual_secant_function_Ruben_Rodriguez(funcion, punto_0, punto_1, iteraciones,error)

i = 0;

hold on
grid on

while i < iteraciones
    
    punto_2 = punto_1 - funcion(punto_1)*(punto_1 - punto_0)/(funcion(punto_1) - funcion(punto_0));
    pendiente = -funcion(punto_0)/(punto_2 - punto_0);
    
    % FUNCION DE LA RECTA
    recta = @(x) pendiente*(x) - pendiente*punto_2;
    
    % GRAFICA DE LAS RECTAS
    fplot(recta,'r:')
    
    % PUNTOS
    plot(punto_2,0,'k.')
    plot(punto_0,funcion(punto_0),'k.')
    
    % REASIGNACION
    punto_0 = punto_1;
    punto_1 = punto_2;
     
    if abs(punto_1 - punto_0) < error || funcion(punto_1) - funcion(punto_0) == 0
        break
    end
    
    i = i + 1;
    
end
% GRFICA DE LA FUNCION
fplot(funcion,'b')

% RAIZ EN LA GRAFICA MARCADA CON UN *
plot(punto_2,0,'ko')

raiz = punto_2;
end

