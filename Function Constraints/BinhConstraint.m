
% Bihn
function [g,OverallConstraintViolation,NumberOfViolatedConstraint] = BinhConstraint( x )
OverallConstraintViolation=0.0; % TOTAL
NumberOfViolatedConstraint=0; % NUMBER

g=[0 0];
g(1)=25-(x(1)-5).^2 - x(2).^2 ;
g(2)=(x(1)-8).^2 + (x(2)+3).^2 - 7.7;

if g(1) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(1); % TOTAL
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end


if g(2) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(2);
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end



end