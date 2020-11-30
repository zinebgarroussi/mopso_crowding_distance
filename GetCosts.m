

function costs=GetCosts(arc)

global Nf;
    
   % costs=reshape([arc.Cost],Nf,[]);
   for r=1:numel(arc)
   costs(r,:)=arc(r).Cost;
   end

end