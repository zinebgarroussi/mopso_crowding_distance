
% Kursawe
function f=Kur(x)

nx=numel(x);
    
 f=[0 0];
 f(1)=-10*(exp(-0.2*sqrt(x(1)^2 + x(2)^2)) + exp(-0.2*sqrt(x(2)^2 + x(3)^2))); 
 f(2)= abs(x(1)).^0.8 + abs(x(2)).^0.8 + abs(x(3)).^0.8 + 5*(sin(x(1)^3) + sin(x(2)^3) + sin(x(3)^3));
     
end