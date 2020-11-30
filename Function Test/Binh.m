
% ZDT 1
function f=Binh(x)

nx=numel(x);
    
 f=[0 0];
 f(1)=4*x(1).^2 + 4*x(2).^2; 
 f(2)=(x(1) - 5).^2 + (x(2) - 5).^2;
     
end