
% ZDT 6
function f=ZDT6(x)

nx=numel(x);

f=[0 0];



temp=0;
f(1)=1 - exp(-4*x(1)) * sin(6*pi*x(1))^6;
for j=2:10
    temp=temp + x(j);
end
g = 1 + 9*(temp/9)^0.25;
f(2)=(1 - (f(1)/g)^2);

end