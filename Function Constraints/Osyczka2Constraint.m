
% Bihn
function [g,OverallConstraintViolation,NumberOfViolatedConstraint] = Osyczka2Constraint( x )
OverallConstraintViolation=0.0; % TOTAL
NumberOfViolatedConstraint=0; % NUMBER

g=[0 0 0 0 0 0];
g(1) = (x(1) + x(2)) -2.0;
g(2) = 6.0 - x(1) - x(2);
g(3) = (2.0 - x(2) + x(1));
g(4) = 2.0 - x(1) + 3.0*x(2);
g(5) = (4.0 - (x(3)-3.0)*(x(3)-3.0) - x(4));
g(6) = ((x(5)-3.0)*(x(5)-3.0) +x(6) - 4.0);
if g(1) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(1); % TOTAL
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end


if g(2) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(2);
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end

if g(3) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(3); % TOTAL
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end
if g(4) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(4); % TOTAL
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end
if g(5) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(5); % TOTAL
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end
if g(6) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(6); % TOTAL
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end



end