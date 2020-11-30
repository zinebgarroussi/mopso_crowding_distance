
% cantileverbeam
function f=cantileverbeam(x)

    rho       = 7800;                     % density (kg/m3)
    P         = 1;                        % Load (kN)
    E         = 207e6;                    % Elastic modulus (kPa)
    Sy        = 300e3;                    % Maximum stress allowed (kPa)
    delta_max = 0.005;                    % Maximum deflection allowed (mm)
    
 f=[0 0];
 f(1)=0.25*rho*pi*x(2)*x(1)^2;         % Weight (kg)
 f(2)=(64*P*x(2)^3)/(3*E*pi*x(1)^4) ;  % Deflection (m)
     
end