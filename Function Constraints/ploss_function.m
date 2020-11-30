function [ ploss ] = ploss_function( x )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

Bmn = [...
    
0.1382 -0.0299 0.0044 -0.0022 -0.0010 -0.0008
-0.0299 0.0487 -0.0025 0.0004 0.0016 0.0041
0.0044 -0.0025 0.0182 -0.0070 -0.0066 -0.0066
-0.0022 0.0004 -0.0070 0.0137 0.0050 0.0033
-0.0010 0.0016 -0.0066 0.0050 0.0109 0.0005
-0.0008 0.0041 -0.0066 0.0033 0.0005 0.0244

];

B0 =[-0.0107 0.0060 -0.0017 0.0009 0.0002 0.0030];
B00=9.8571e-4;
ploss=0.0;
for j=1:size(x,2)
    for k=1:size(x,2)
        ploss=ploss+ (x(j).*Bmn(j,k).*x(k));   % Active Power Losses
        
    end
    ploss= ploss+ B0(j)*x(j);
end        
 ploss= ploss+B00;

end

