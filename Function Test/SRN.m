
% Chankong and Haimes
function f=SRN(x)

    
 f=[0 0];
 f(1)=(x(1) - 2).^2 + (x(2) - 1).^2 + 2;
 f(2)=9*x(1) - (x(2) - 1).^2;
     
end