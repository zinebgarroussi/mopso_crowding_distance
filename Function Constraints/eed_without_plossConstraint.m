
% Bihn
function [g,OverallConstraintViolation,NumberOfViolatedConstraint] = eed_without_plossConstraint( x )
OverallConstraintViolation=0.0; % TOTAL
NumberOfViolatedConstraint=0; % NUMBER

g=[0 0];
g(1)=-abs(x(1)+ x(2)+ x(3) + x(4)+x(5)+ x(6) - 2.834)+1e-2;   % 
g(2)= (x(1)+ x(2)+ x(3) + x(4)+x(5)+ x(6)) - 2.834;    % 

if g(1) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(1); % TOTAL
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end


if g(2) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(2);
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end



end