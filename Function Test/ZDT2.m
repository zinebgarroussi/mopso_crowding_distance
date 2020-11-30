
% ZDT 2
function f=ZDT2(x)

nx=numel(x);

f=[0 0];
f(1)=x(1);
f(2)=(1 + 9*sum(x(2:nx))/(nx-1))*(1 - (x(1)/(1 + 9*sum(x(2:nx))/(nx-1))).^2);

% temp=0;
% f(1)=x(1);
% for j=2:30
%     temp=temp + x(j);
% end
% g = 1+(9/29)*temp;
% % for ZDT2
% %fitness(i,2)=g*(1-sqrt(fitness(i,1)/g));
% % for ZDT2
% f(2)=g*(1-(x(1)/g)^2);

end





