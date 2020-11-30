
% ZDT 1
function f=SCH2(x)

nx=numel(x);
    
 f=[0 0];
 f(1)=                     -x    .*(x<=1)       + ...
                    (x-2).*(1<x & x<=3) + ...
                    (4-x).*(3<x & x<=4) + ...
                    (x-4).*(x>4);

f(2)= (x-5).^2;
     
end