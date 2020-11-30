
% cantileverbeam
function [g,OverallConstraintViolation,NumberOfViolatedConstraint] = cantileverbeamConstraint( x )
%CONSTREXPCONSTRAINT Summary of this function goes here
%   Detailed explanation goes here

OverallConstraintViolation=0.0; % TOTAL
NumberOfViolatedConstraint=0; % NUMBER
    rho       = 7800;                     % density (kg/m3)
    P         = 1;                        % Load (kN)
    E         = 207e6;                    % Elastic modulus (kPa)
    Sy        = 300e3;                    % Maximum stress allowed (kPa)
    delta_max = 0.005;                    % Maximum deflection allowed (mm)
    
 g=[0 0];
 g(1)= Sy - (32*P*x(2))/(pi*x(1)^3) ;
 g(2)=delta_max - (64*P*x(2)^3)/(3*E*pi*x(1)^4);

if g(1) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(1); % TOTAL
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end


if g(2) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(2);
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end





end

