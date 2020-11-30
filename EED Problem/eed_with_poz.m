
% EED 30 BUS Test System
function f=eed_with_poz(x)

f=[0 0];
load data_30_bus.mat;
temp=0;
temp2=0;
d=6;

for j=1:d
   % temp=temp+(coef_cout(1,j) + coef_cout(2,j).*x(j) + coef_cout(3,j).*x(j).*x(j));
    temp=temp+(coef_cout(1,j) + coef_cout(2,j).*x(j) + coef_cout(3,j).*x(j).*x(j))+abs(coef_cout(4,j)*sin((coef_cout(5,j)*( limits(j,1) - x(j)))));

end

f(1)=temp;
for j=1:d
    temp2=temp2+(coef_emission(1,j) + coef_emission(2,j).*x(j) + coef_emission(3,j).*x(j).*x(j)+ coef_emission(4,j).*exp(coef_emission(5,j).*x(j)));   % NOX emission (ton/h)
end
f(2)=temp2;


end








