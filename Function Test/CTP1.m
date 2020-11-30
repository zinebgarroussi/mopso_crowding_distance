
% CTP1
function f=CTP1(x)

nx=numel(x);
    
 f=[0 0];
 f(1)=x(1);
 f(2)=(1+x(2))*exp(-x(1)/(1+x(2)));
     
end