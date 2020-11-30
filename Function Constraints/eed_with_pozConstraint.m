
% eed_with_pozConstraint
function [g,OverallConstraintViolation,NumberOfViolatedConstraint] = eed_with_pozConstraint( x )
OverallConstraintViolation=0.0; % TOTAL
NumberOfViolatedConstraint=0; % NUMBER
ploss =ploss_function(x);
load data_30_bus.mat;
No_of_POZ_Limits=6;
temp_x = repmat(x,No_of_POZ_Limits/2,1);

g=[0 0 0];
g(1)=-abs(x(1)+ x(2)+ x(3) + x(4)+x(5)+ x(6) - 2.834-ploss)+1e-2;   % 
g(2)= (x(1)+ x(2)+ x(3) + x(4)+x(5)+ x(6)) - 2.834-ploss;    % 

g(3)= sum(sum((POZ_Lower_Limits<temp_x & temp_x<POZ_Upper_Limits).*min(temp_x-POZ_Lower_Limits,POZ_Upper_Limits-temp_x)));% poz constraint



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