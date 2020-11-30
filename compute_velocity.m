function compute_velocity()
format long;
global archive;
global pop;
global swarmSize;



for i=1:swarmSize;
    
    % Select a global best_ for calculate the speed of particle i, bestGlobal
    pos1 = randi([1,numel(archive)]);
    pos2= randi([1,numel(archive)]);
    if archive(pos1).CrowdingDistance < archive(pos2).CrowdingDistance 
        bestGlobal= archive(pos2).Position;
    else
        bestGlobal = archive(pos1).Position;
    end
    
    
    
     % Params for velocity equation
      r1 = rand;
      r2 = rand;
      C1 = (2.0-1.5).*rand() + 1.5;
      C2 = (2.0-1.5).*rand() + 1.5;
      W  = (0.5-0.1).*rand() + 0.1;
      
      % Computing the velocity of this particle  
      
      pop(i).Velocity =  W  *  pop(i).Velocity +...
                   C1 * r1 * (pop(i).BestPosition - pop(i).Position)+...
                   C2 * r2 * (bestGlobal -  pop(i).Position);
    
end

end

