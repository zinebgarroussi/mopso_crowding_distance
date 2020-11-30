
function update_pbest()
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


for i = 1:numel(pop)
    flag = Copy_of_dominance_compare(pop(i),pop(i));
    if flag ~=1
        pop(i).BestPosition=pop(i).Position;
        pop(i).BestFitness=pop(i).Cost;

        
     end
    
end



