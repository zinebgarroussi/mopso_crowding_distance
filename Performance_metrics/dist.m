function d=dist(y,y_ture)
global y_ture
d=zeros(size(y,1),1);
for i=1:size(y,1)
    d(i)=dist_(y(i,:),y_ture);
end


function d=dist_(y,y_ture)
%%返回点y到真实pareto前端y_ture的最短距离
global y_ture
d=[];
for i=1:size(y_ture,1)
    d(i)=sqrt((y-y_ture(i,:))*(y-y_ture(i,:))');
end
d=min(d);