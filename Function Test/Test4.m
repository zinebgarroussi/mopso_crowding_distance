
% Test case 4
function f=Test4(x)

nx=numel(x);
    
 f=[0 0];
 f(1)=x(1).^2 - x(2); 
 f(2)=-0.5*x(1) - x(2) - 1;
     
end