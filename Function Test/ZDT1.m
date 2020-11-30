
% ZDT 1
function f=ZDT1(x)

nx=numel(x);
    
 f=[0 0];
 f(1)=x(1);  
 f(2)=(1 + 9*sum(x(2:nx))/(nx-1))*(1 - sqrt(x(1)/(1 + 9*sum(x(2:nx))/(nx-1))));
     
end

