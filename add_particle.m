% ZINEB GARROUSSI (EMI)
% 
function add_particle( solution )
%ADD Summary of this function goes here
%   Detailed explanation goes here
% if particle is dominated by any memeber of the archive, then it is
% discared
% if the particle dominates some members of the archive, these are removed.
% if the archive is full and the particle has to be inserted, the solutions
% are sorted by crowding distance and the one having the min crowding
% distance
format long;
global d;
global swarmSize;
global archiveSize;
global limits;
global Nf;
global Nc;
global pop;
global archive;
% 
% if numel(archive)==0;
% archive(1).Position = solution.Position;
% archive(1).Cost = solution.Cost;
% %archive(1).CrowdingDistance=solution.CrowdingDistance; % CD
% if Nc~=0
% archive(1).OverallConstraintViolation=solution.OverallConstraintViolation; % 
% archive(1).NumberOfViolatedConstraint=solution.NumberOfViolatedConstraint; % CD
% end


% else
i=1;
while (i < numel(archive))
    flag = dominance_compare(solution,archive(i));
    if (flag==1) % The solution to add is dominated
            return; % Discard the new solution
        
    elseif (flag== -1) % A solution in the archive is dominated
            archive(i) =[];      % Remove it from the population 
    else
        if archive(i).Cost== solution.Cost   % There is an equal solution  in the population
            return; % Discard the new solution
        end
        i=i+1;
    end



end
% insert the particle into archive
kk=numel(archive)+1;
archive(kk).Position = solution.Position;
archive(kk).Cost = solution.Cost;
%archive(kk).CrowdingDistance=solution.CrowdingDistance; % CD
if Nc~=0
archive(kk).OverallConstraintViolation=solution.OverallConstraintViolation; % 
archive(kk).NumberOfViolatedConstraint=solution.NumberOfViolatedConstraint; % CD
end
if (numel(archive) > archiveSize) % The archive is full
    calculate_crowding();
    [tmp5, idx5]= min([archive.CrowdingDistance]);
    
    archive(idx5) =[];      % Remove it from the population 

end
end

%end


