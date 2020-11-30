% Data for 30 BUS Test System
% Zineb GAAROUSSI : PhD Student at EMI / Rabat 
% Rachid ELLAIA : Supervisor

% We have 6 generators
% Valve point effect


% Total demand in MW
%Pd = 283.4;
Pd=2.834; % total demand (p.u), 


% Cost coefficients with Valve point effect
% a ($/h)
% b ($/MWh)
% c ($/MW2h)
% d ($/h)  (valve point effect coefficient)
% e (rad/MW) (valve point effect coefficient)

coef_cout = [...
    10 10 20 10 20 10
    200 150 180 100 180 150
    100 120 40 60 40 100
    120 50 30 25 25 30
    0.073 0.032 0.051 0.026 0.026 0.048 
];






% Generator capacity limits Pmin (MW), Pmax (MW)
limits = [...
    0.05 0.50
    0.05 0.60
    0.05 1.00
    0.05 1.20
    0.05 1.00
    0.05 0.60
];


% Emission coefficient
% alpha (lb/h)
% beta (lb/MWh)
% gamma (lb/MW2h)
% nu (lb/h)
% xeta (1/MW)



coef_emission = [...
    4.091e-2 2.543e-2 4.258e-2 5.326e-2 4.258e-2 6.131e-2
    -5.554e-2 -6.047e-2 -5.094e-2 -3.550e-2 -5.094e-2 -5.555e-2
    6.490e-2 5.638e-2 4.586e-2 3.380e-2 4.586e-2 5.151e-2
    2.0e-4 5.0e-4 1.0e-6 2.0e-3 1.0e-6 1.0e-5
    2.857 3.333 8.000 2.000 8.000 6.667
    ];


% coef_emission = [...
%     4.091 2.543 4.258 5.326 4.258 6.131
%     -5.554 -6.047 -5.094 -3.550 -5.094 -5.555
%     6.490 5.638 4.586 3.380 4.586 5.151
%     2.0e-4 5.0e-4 1.0e-6 2.0e-3 1.0e-6 1.0e-5
%     2.857 3.333 8.000 2.000 8.000 6.667
%     ];
% 




% POZ constraints 

% poz_limit = {...
%     [15 20] [25 30] [45 50]
%     [5 10] [20 25] [35 40]
%     [45 50] [65 75] [95 100]
%     [20 30] [60 65] [105 110]
%     [20 30] [40 45] [80 85]
%     [10 15] [20 25] [55 60]
%     
%     };

                % Zone1min    Zone1max     Zone2min   Zone2max    Zone3min   Zone3max
poz_limit = [   1.5              2.0          2.5          3.0          4.5          5.0 
                0.05             1.0          2.0          2.5          3.5          4.0
                4.5              5.0          6.5          7.5          9.5          10.0
                2.0              3.0          6.0          6.5          10.5         11.0
                2.0              3.0          4.0          4.5          8.0          8.5
                1.0              1.5          2.0          2.5          5.5          6.0


    
  ];



%                 % Zone1min    Zone1max     Zone2min   Zone2max    Zone3min   Zone3max
% poz_limit = [   15              20          25          30          45          50 
%                 5               10          20          25          35          40
%                 45              50          65          75          95          100
%                 20              30          60          65          105         110
%                 20              30          40          45          80          85
%                 10              15          20          25          55          60
% 
% 
%     
%   ];

Prohibited_Operating_Zones_POZ = poz_limit(:,1:end)';
No_of_POZ_Limits = size(Prohibited_Operating_Zones_POZ,1);
POZ_Lower_Limits = Prohibited_Operating_Zones_POZ(1:2:No_of_POZ_Limits,:);
POZ_Upper_Limits = Prohibited_Operating_Zones_POZ(2:2:No_of_POZ_Limits,:);

 
    
    









