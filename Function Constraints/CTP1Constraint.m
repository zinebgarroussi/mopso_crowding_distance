
% Bihn
function [g,OverallConstraintViolation,NumberOfViolatedConstraint] = CTP1Constraint( x )
OverallConstraintViolation=0.0; % TOTAL
NumberOfViolatedConstraint=0; % NUMBER

g=[0 0];
A=x(1);
B=(1+x(2))*exp(-(x(1)/(1+x(2))));
g(1)= B /(0.858*exp(-0.541*A))-1;
g(2)= B/(0.728*exp(-0.295*A))-1;

if g(1) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(1); % TOTAL
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end


if g(2) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(2);
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end



end