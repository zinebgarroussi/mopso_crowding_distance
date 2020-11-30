
% Fonseca and Fleming 
function f=FON(x)

    
 f=[0 0];
 f(1)=1 - exp(-sum((x - 1/sqrt(3)).^2)); 
 f(2)=  1 - exp(-sum((x + 1/sqrt(3)).^2));
     
end