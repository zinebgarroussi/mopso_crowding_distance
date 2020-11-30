function mutation_omopso( currentIteration)
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



%MUTATION_OMOPSO Summary of this function goes here
%   Detailed explanation goes here

for i=1:swarmSize
    
    if (rem(i,3) == 0)
       nonUniformMutation(pop(i), currentIteration);
    elseif (rem(i,3) == 1)
         UniformMutation(pop(i));
    else
        % PARTICLE WITHOUT MUTATION
    end



end

