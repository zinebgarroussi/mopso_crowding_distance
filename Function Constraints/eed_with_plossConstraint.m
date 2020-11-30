
% Bihn
function [g,OverallConstraintViolation,NumberOfViolatedConstraint] = eed_with_plossConstraint( x )
OverallConstraintViolation=0.0; % TOTAL
NumberOfViolatedConstraint=0; % NUMBER
ploss =ploss_function(x);
g=[0 0];
g(1)=-abs(x(1)+ x(2)+ x(3) + x(4)+x(5)+ x(6) - 2.834-ploss)+1e-2;   % 
g(2)= (x(1)+ x(2)+ x(3) + x(4)+x(5)+ x(6)) - 2.834-ploss;    % 

if g(1) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(1); % TOTAL
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end


if g(2) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(2);
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end



end