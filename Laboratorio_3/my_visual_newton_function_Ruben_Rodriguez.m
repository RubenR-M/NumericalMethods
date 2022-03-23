function [] = my_visual_newton_function_Ruben_Rodriguez(funcion,derivada,punto,iteraciones)

hold on
grid on

plot(punto,0,'ko')

i = 0;
error = 1*exp(-20);

while i < iteraciones
    
    raiz = punto - funcion(punto)/derivada(punto);
    error_abs = abs(raiz - punto);
    
    % PROYECCION DE LOS PUNTOS DE LA DERIVADA EN EL EJE X
    plot(raiz, 0,'ko')
    
    % PUNTO EVALUADO EN LA DERIVADA
    plot(raiz,derivada(raiz),'k*') 
    
    if error_abs < error
        break
    end
    
    punto = raiz;
    i = i + 1;
    
end
% RAIZ MARCADA CON UN *
plot(raiz,0,'k*')
% GRAFICA AZUL FUNCION
fplot(funcion,[raiz-5 raiz+5],'b')
% GRAFICA ROJA DERIVADA
fplot(derivada,[raiz-5 raiz+5],'r')

end

