
% -------------------------------------------------------
% | Developed by:   Zineb GARROUSSI                     |
% |                 zineb.garroussi@gmail.com           |
% |                 Rachid ELLAIA                       |
% |                 ellaia@emi.ac.ma                    |
% |                 Ecole Mohammadia d'ingénieurs       |
% |                 Rabat, Morocco.                     |
% -------------------------------------------------------


%  CreateEmptyIndividuals.m : creates an array of strucures     %
%                             to save individuals' data         %
                                                             


function pop=CreateEmptyIndividuals(n)

    if nargin<1
        n=1;
    end
    
    individual.Position=[];
    individual.Cost=[];
    individual.Velocity=[];
    individual.CrowdingDistance=[];
    individual.BestPosition=[];
    individual.BestFitness=[];
    pop=repmat(individual,1,n);
    
end