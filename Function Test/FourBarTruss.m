
% ZDT 1
function f=FourBarTruss(x)

F_     = 10   ; % 10kN
E_     = 200000; % 20000 kN/cm2
L_     = 200  ; % 200 cm
 f=[0 0];
 f(1)= L_*(2*x(1)+ sqrt(2.0)*x(2)+ sqrt(x(3))+x(4)) ;  
 f(2)= (F_*L_/E_)*(2/x(1) + 2*sqrt(2)/x(2) - 2*sqrt(2)/x(3) + 2/x(4)); 
     
end