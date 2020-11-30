% % Generational Distance
function [ generationalDistance ] = generational_distance(front,trueParetoFront,numberOfObjectives  )
%GENERATIONAL_DISTANCE Summary of this function goes here
% 
somme = 0.0;
size_front = size(front,1)
size_true_front = size(trueParetoFront,1)
% STEP 1.
% Gets the maximum values for each objectives in a given true pareto front
maximumValue = max(trueParetoFront);

% Gets the minimum values for each objectives in a given true pareto front
minimumValue = min(trueParetoFront);

% STEP 2. Get the normalized front and true Pareto fronts
normalizedFront =  (front - repmat(minimumValue,size_front,1)) ./ (repmat(maximumValue,size_front,1) - repmat(minimumValue,size_front,1));
normalizedParetoFront =  (trueParetoFront - repmat(minimumValue,size_true_front,1)) ./ (repmat(maximumValue,size_true_front,1) - repmat(minimumValue,size_true_front,1));

% STEP 3. Sum the distances between each point of the front and the nearest point in the true Pareto front

for i=1:size_front
    minDistance  = sqrt(sum((normalizedFront(i,:) - normalizedParetoFront(1,:)) .^ 2));
    for j=1:size_true_front
        aux = sqrt(sum((normalizedFront(i,:) - normalizedParetoFront(j,:)) .^ 2));
        if aux < minDistance
            minDistance = aux;
        end
    end
    somme = somme + minDistance
    
end

% STEP 4. Obtain the sqrt of the sum and divide the sum by the maximum number of points of the front
    generationalDistance = sqrt(somme) / size_front ;
end


% function [ generationalDistance ] = generational_distance(front,trueParetoFront,numberOfObjectives  )
% 
% % function GD=GD(y,pareto)
% 
% d=dist(front,trueParetoFront);
% generationalDistance=sqrt(d'*d)/size(front,1);

