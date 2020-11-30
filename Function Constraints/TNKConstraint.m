
% TNK



function [g,OverallConstraintViolation,NumberOfViolatedConstraint] = TNKConstraint( x )
OverallConstraintViolation=0.0; % TOTAL
NumberOfViolatedConstraint=0; % NUMBER

g=[0 0];
g(1)=x(1).^2 + x(2).^2 - 1 - 0.1*cos(16*atan2(x(1),x(2)));
g(2)=0.5 - (x(1)-0.5).^2 - (x(2)-0.5).^2;

if g(1) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(1); % TOTAL
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end


if g(2) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(2);
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end



end