function UniformMutation( solution )
%UNIFORMMUTATION Summary of this function goes here
%   Detailed explanation goes here
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
global pop;
global archive;

for j=1:d
    if rand < mutationProbability
        tmp = (rand - 0.5)*perturbationIndex;
       solution.Position(j)= tmp + solution.Position(j);
        if solution.Position(j)< limits(j,1)
           solution.Position(j) = limits(j,1);
        elseif solution.Position(j) > limits(j,2)
            solution.Position(j)  = limits(j,2);
        end
        
    end
end
end % END FUNCTION UniformMutation

