function nonUniformMutation( solution,currentIteration)
%NONUNIFORMMUTATION Summary of this function goes here
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
        if rand <=0.5
            tmp=delta_non_uniform_mutation( solution.Position(j), perturbationIndex, currentIteration);
            solution.Position(j)= tmp + solution.Position(j);
        else
            tmp=delta_non_uniform_mutation( solution.Position(j), perturbationIndex, currentIteration);
            solution.Position(j)=tmp+solution.Position(j);
        end
        if solution.Position(j) < limits(j,1)
            solution.Position(j) = limits(j,1);
        elseif solution.Position(j) > limits(j,2)
                solution.Position(j)=limits(j,2);
        end
        
        
    end
    
end

end

