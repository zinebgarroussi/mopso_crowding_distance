
% Golinski
function f=Golinski(x)

    
 f=[0 0];
 f(1)= 0.7854 * x(1) *x(2) *x(2) * ((10*x(3)*x(3))/3.0 + 14.933*x(3) - 43.0934) -... 
                1.508*x(1)*(x(6)*x(6) + x(7)*x(7))+7.477*(x(6)*x(6)*x(6) + x(7)*x(7)*x(7)) + ...
                0.7854*(x(4)*x(6)*x(6) + x(5)*x(7)*x(7)); 
            
 aux = 745.0 * x(4) / (x(2) * x(3));           
 f(2)=sqrt((aux*aux)+1.69e7) / (0.1*x(6)*x(6)*x(6));
     
end