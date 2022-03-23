function [C,Coef] = my_NewtonPolynomial_RubenRodriguez(x,y)
 n = length(x);
 b = zeros(n);
 b(:,1) = y(:);
 
 for j = 2:n
     for i=1:n-j+1
         b(i,j)=(b(i+1,j-1)-b(i,j-1))/(x(i+j-1)-x(i));
     end
 end
 
 Coef(1) =(b(1,1));
 for j=2:n
     Coef(j)=(b(1,j));
 end
 
 v = 1;
 yi = b(1,1);
 for j=1:n-1
     v = v.*(v-x(j));
     yi = yi + b(1,j+i)*v;
 end
 
 C = num2str(b(1,1));
 v1 = x*-1;
 for j=2:n
     signo='';
     if b(1,j)>=0
        signo = '+';
     end
     v = '';
     for i=1:j-1
         signo2='';
         if v1(i)>=0
             signo2='+';
         end
         v = strcat(v,'*(x',signo2,num2str(v1(i)),')');
     end
     C=strcat(C,signo,num2str(b(1,j)),v);
 end
end

