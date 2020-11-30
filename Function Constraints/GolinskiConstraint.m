
% Golinski constraint

function [g,OverallConstraintViolation,NumberOfViolatedConstraint] = GolinskiConstraint( x )
OverallConstraintViolation=0.0; % TOTAL
NumberOfViolatedConstraint=0; % NUMBER

    g(1) = -((1.0/(x(1)*x(2)*x(2)*x(3))) -(1.0/27.0));
    g(2) = -((1.0/(x(1)*x(2)*x(2)*x(3)*x(3)))-(1.0/397.5));
    g(3) = -((x(4)*x(4)*x(4))/(x(2)*x(3)*x(3)*x(6)*x(6)*x(6)*x(6))-(1.0/1.93));
    g(4) = -((x(5)*x(5)*x(5))/(x(2)*x(3)*x(7)*x(7)*x(7)*x(7))- (1.0/1.93));
    g(5) = -(x(2)*x(3) - 40.0);
    g(6) = -((x(1)/x(2)) - 12.0);
    g(7) = -(5.0 - (x(1)/x(2)));
    g(8) = -(1.9 - x(4) + 1.5*x(6));
    g(9) = -(1.9 - x(5) + 1.1*x(7));
    
    aux = 745.0 * x(4) / (x(2) * x(3));
    f2 = sqrt((aux*aux)+1.69e7) / (0.1*x(6)*x(6)*x(6));
    g(10) = -(f2 - 1300);
    a = 745.0*x(5)/(x(2)*x(3));
    b = 1.575e8;
    g(11) = -(sqrt(a*a+b)/(0.1*x(7)*x(7)*x(7))-1100.0);
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
    OverallConstraintViolation = OverallConstraintViolation + g(4);
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end

if g(5) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(5); % TOTAL
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end


if g(6) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(6);
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end

if g(7) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(7);
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end

if g(8) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(8);
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end
if g(9) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(9);
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end

if g(10) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(10);
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end

if g(11) < 0.0
    OverallConstraintViolation = OverallConstraintViolation + g(11);
    NumberOfViolatedConstraint = NumberOfViolatedConstraint + 1; % number
end



end