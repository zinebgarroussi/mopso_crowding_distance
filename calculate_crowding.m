% zineb garroussi
function calculate_crowding()
format long;
global d;
global swarmSize;
global archiveSize;
global limits;
global Nf;
global Nc;
global particle;
global archive;

l = numel(archive);
if(l==0)
    return;
end
if(l==1)
   archive.CrowdingDistance = inf;
    return;   
end

if(l==2)
   archive(1).CrowdingDistance  = inf;
   archive(2).CrowdingDistance  = inf;

    return;
end


for i = 1:l
   archive(i).CrowdingDistance  = 0.0;
end

my_archive=GetCosts(archive);

for j=1:Nf
    [tmp1, idx1]  = sort(my_archive(:,j),'ascend');
    archive(idx1(1)).CrowdingDistance=inf;
    archive(idx1(l)).CrowdingDistance=inf;
    f_max        = tmp1(l);
    f_min        = tmp1(1);
    
        for k = 2:l-1
            temp1        = (tmp1(k+1) - tmp1(k-1))/(f_max - f_min);
            archive(idx1(k)).CrowdingDistance= archive(idx1(k)).CrowdingDistance + temp1 ;

        end
end

end

