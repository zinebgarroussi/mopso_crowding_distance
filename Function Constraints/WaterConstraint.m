

% WaterConstraint


function [g,OverallConstraintViolation,NumberOfViolatedConstraint] = WaterConstraint( x )
OverallConstraintViolation=0.0; % TOTAL
NumberOfViolatedConstraint=0; % NUMBER

g=[0 0 0 0 0 0 0];


    g(1) = 1 - (0.00139/(x(1)*x(2))+4.94*x(3)-0.08)             ;
    g(2) = 1 - (0.000306/(x(1)*x(2))+1.082*x(3)-0.0986)         ;
    g(3) = 50000 - (12.307/(x(1)*x(2)) + 49408.24*x(3)+4051.02) ;
    g(4) = 16000 - (2.098/(x(1)*x(2))+8046.33*x(3)-696.71)      ;
    g(5) = 10000 - (2.138/(x(1)*x(2))+7883.39*x(3)-705.04)      ;
    g(6) = 2000 - (0.417*x(1)*x(2) + 1721.26*x(3)-136.54)       ;
    g(7) = 550 - (0.164/(x(1)*x(2))+631.13*x(3)-54.48) ;

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



end