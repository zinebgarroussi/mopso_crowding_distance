
% Poloni
function f=Poloni(x)

nx=numel(x);
A1 = 0.5*sin(1) - 2*cos(1) + sin(2)   - 1.5*cos(2);
 A2 = 1.5*sin(1) - cos(1)   + 2*sin(2) - 0.5*cos(2);
    
 f=[0 0];
 f(1)=1 + (A1 - (0.5*sin(x(1)) - 2*cos(x(1)) + sin(x(2)) - 1.5*cos(x(2)))).^2 + (A2 - (1.5*sin(x(1)) - cos(x(1))   + 2*sin(x(2)) - 0.5*cos(x(2)))).^2;
 f(2)=(x(1) + 3).^2 + (x(2) + 1).^2;
 
     
end