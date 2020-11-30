function actualize_archive()

format long;
global swarmSize;
global d;
global CostFunction;
global ConstraintFunction;
global limits;
global Nc;
global Nf;
global pop;
global archive;

for  i=1:numel(pop)
    add_particle(pop(i));  
end


end

