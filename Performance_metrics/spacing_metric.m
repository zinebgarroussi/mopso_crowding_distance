% % Spacing metric
% function [ spacingMetric ] = spacing_metric(front,trueParetoFront,numberOfObjectives)
% % Spacing metric Summary of this function goes here
% % 
% size_front = size(front,1)
% minDistTable = zeros(1,size_front);
% minDist = sum(abs(front(1,:)- front(2,:)));
% %sumDist = 0;
% for i=1:size_front
%     for j=1:size_front
%         if i==j
%             continue;
%         else
%             sumDist = sum(abs(front(i,:)- front(j,:)));
%             if sumDist < minDist
%                 minDist = sumDist;
%             end
%             
%             
%         end
%         minDistTable(i) = minDist;
%     end
% end
% spacingMetric = std(minDistTable);
% end

 function [ spacingMetric ] = spacing_metric(front)
% 
% function SP=SP(x)

for i=1:size(front,1)
    for j=1:size(front,1)
        if j==i
            mid(j)=inf;
            continue;
        end
        mid(j)=sum(abs(front(i,:)-front(j,:)));
    end
    d(i)=min(mid);
end
ave_d=mean(d);
spacingMetric=sqrt((ave_d-d)*(ave_d-d)'/(size(front,1)-1));

