
% Osyczka2
function f=Osyczka2(x)

nx=numel(x);
    
 f=[0 0];
 f(1)= - (25.0*(x(1)-2.0)*(x(1)-2.0) + ...
                  (x(2)-2.0)*(x(2)-2.0) + ...
                  (x(3)-1.0)*(x(3)-1.0) + ...
                  (x(4)-4.0)*(x(4)-4.0)+...
                  (x(5)-1.0)*(x(5)-1.0));
                
 f(2)=x(1)*x(1) + x(2)*x(2) + x(3)*x(3) + x(4)*x(4) + x(5)*x(5) + x(6)*x(6);
     
end