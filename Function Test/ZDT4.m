
% ZDT 4 
function f=ZDT4(x)

nx=numel(x);
    
 f=[0 0];
 f(1)=x(1);
 f(2)=(1 + 10*(nx-1) + sum(x(2:nx).^2 - 10*cos(4*pi*x(2:nx))))*(1 - sqrt(x(1)/(1 + 10*(nx-1) + sum(x(2:nx).^2 - 10*cos(4*pi*x(2:nx))))));
     
end