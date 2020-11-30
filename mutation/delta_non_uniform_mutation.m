% Calculates the delta value used in NonUniform mutation operator
function value_delta = delta_non_uniform_mutation( y, bMutationParameter, currentIteration )
%DELTA Summary of this function goes here
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
global particle;
global archive;


value_delta = y * (1.0 - rand^(1.0 - currentIteration /maxIterations)^bMutationParameter );

end

