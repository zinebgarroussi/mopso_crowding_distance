% Zineb GARROUSSI (EMI)
% dominance 
% Constraint violation test
% domiance checking like NSGA 2
function tmp = Copy_of_dominance_compare(solution1,solution2)
format long;
global maxIterations;
global perturbationIndex;
global d;
global mutationProbability;
global swarmSize;
global archiveSize;
global limits;
global Nf;
global Nc;
global particle;
global archive;

%DOMINANCE_COMPARE Summary of this function goes here
%   Detailed explanation goes here
dominate1=0;
dominate2=0;


if Nc~=0
if( need_to_compare(solution1,solution2)~=0 )
     tmp = violation_compare(solution1,solution2);
     return;
end
end

sol1=solution1.Cost;
sol2=solution2.BestFitness;
for i=1:Nf
    if sol1(i)<sol2(i)
        flag=-1;
    elseif sol1(i)>sol2(i)
        flag=1;
    else
        flag=0;
    end
    if flag==-1
        dominate1=1;
    end
    if flag==1
        dominate2=1;
    end
end

if dominate1==dominate2
    tmp=0; % No one dominate the other
    return;
end

if dominate1==1
    tmp=-1; % Solution 1 dominate
    return;
end

tmp=1; % Solution 2 dominate



end

