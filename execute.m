function execute()
format long;
global swarmSize;
global d;
global CostFunction;
global ConstraintFunction;
global limits;
global Nc;
global pop;
global archive;
global maxIterations;
global perturbationIndex;
global mutationProbability;




% 1--- Initialization
pop=CreateEmptyIndividuals(swarmSize);

for i=1:numel(pop)
    pop(i).Position=(limits(:,2)' - limits(:,1)').*rand(1,d)+limits(:,1)';
    pop(i).Velocity=zeros(1,d);
    pop(i).Cost=CostFunction(pop(i).Position);
    pop(i).CrowdingDistance=0.0;
end

if Nc~=0
for i=1:numel(pop)
    [pop(i).Constraints,pop(i).OverallConstraintViolation,pop(i).NumberOfViolatedConstraint]=ConstraintFunction(pop(i).Position);
end
end



      % 2--- Actualize the archive
      actualize_archive();
      
      
      
      % 3--- Initialice the memory of each particle
for i=1:numel(pop)
    pop(i).BestPosition=pop(i).Position;
    pop(i).BestFitness=pop(i).Cost;
    
end

% 4 --- Crowding the leaders
calculate_crowding()


 for t=1:maxIterations,
     disp(t);
     
     % Compute the new velocity
     compute_velocity()
     
     
    % Compute the new position
     compute_position();
     
    
     
           % Mutate the particles
      mutation_omopso(t);  
     
     
     % Evaluate the new particles in new positions
     
for i=1:numel(pop)
    pop(i).Cost=CostFunction(pop(i).Position);
end

% Evaluate Constraints
     
if Nc~=0
for i=1:numel(pop)
    [pop(i).Constraints,pop(i).OverallConstraintViolation,pop(i).NumberOfViolatedConstraint]=ConstraintFunction(pop(i).Position);

end
end
     
 
      % Actualize the archive
      actualize_archive();
      
      % Actualize the memory of this particle
       update_pbest()
	       
     
      % Crowding the leaders
      calculate_crowding()
     
     
 end     


end

