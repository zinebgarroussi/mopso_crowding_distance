function [g,OverallConstraintViolation,NumberOfViolatedConstraint] = ConstrExpConstraint( x )
%CONSTREXPCONSTRAINT Summary of this function goes here
%   Detailed explanation goes here

OverallConstraintViolation=0.0; % TOTAL
NumberOfViolatedConstraint=0; % NUMBER
g=[0 0];
g(1)= x(2) + 9*x(1) - 6 ;   %  x(2) + 9*x(1) >=  6;
g(2)= -x(2) + 9*x(1) - 1 ;    % -x(2) + 9*x(1) >=  1;

if g(1) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(1); % TOTAL
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end


if g(2) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(2);
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end





end

