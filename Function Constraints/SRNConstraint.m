
% SRN
function [g,OverallConstraintViolation,NumberOfViolatedConstraint] = SRNConstraint( x )
OverallConstraintViolation=0.0; % TOTAL
NumberOfViolatedConstraint=0; % NUMBER

g=[0 0];
g(1)= 225 - x(1).^2 - x(2).^2;
g(2)=-x(1) + 3*x(2) - 10;

if g(1) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(1); % TOTAL
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end


if g(2) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(2);
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end



end