% Error Ratio
function [ erreurRatio ] = erreur_ratio(front,trueParetoFront,numberOfObjectives)

size_front = size(front,1); % n 
size_true_front = size(trueParetoFront,1);
ei = 0;

for i=1:size_front
    disp(front(i,:))
    
    if ismember(front(i,:),trueParetoFront) == 0
        ei = ei + 1;

    end
    
    
    
end
erreurRatio  = ei/size_front;

end

