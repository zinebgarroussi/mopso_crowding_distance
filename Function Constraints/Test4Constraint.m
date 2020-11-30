
% ZDT 1
function [g,OverallConstraintViolation,NumberOfViolatedConstraint] = Test4Constraint( x )


OverallConstraintViolation=0.0; % TOTAL
NumberOfViolatedConstraint=0; % NUMBER
g=[0 0];
g(1)= 6.5 - x(1)/6 - x(2);   % 
g(2)=  7.5 - 0.5*x(1) - x(2) ;    %
g(3)=  30 - 5*x(1) - x(2)    ;    %


if g(1) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(1); % TOTAL
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end


if g(2) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(2);
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end


if g(3) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(3);
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end





end