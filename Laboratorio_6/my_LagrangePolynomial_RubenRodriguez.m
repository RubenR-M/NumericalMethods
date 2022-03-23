function [C,P] = my_LagrangePolynomial_RubenRodriguez(x,y)
tamano = length(x);
n = tamano - 1;
L = zeros(tamano, tamano);
for k=1:n+1
    V=1;
    for j=1:n+1
        if k~=j
            V=conv(V,poly(x(j)))/(x(k)-x(j));
        end
    end
    L(k,:)=V;
end
C = y*L;  

n = length(C);
P = '';
for i=1:n
    if C(i) >= 0
        P = strcat(P,'+',num2str(C(i)),'*x^',num2str(n-i));
    else
        P = strcat(P,num2str(C(i)),'*x^',num2str(n-i));
    end
end
end

