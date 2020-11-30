% Data for 57 BUS Test System
% Zineb GAAROUSSI : PhD Student at EMI / Rabat 
% Rachid ELLAIA : Supervisor


% We have 7 generators


% Total demand in MW
%Pd = 1250.8; 
Pd = 12.508; 

% Cost coefficients with Valve point effect
% a ($/h)
% b ($/MWh)
% c ($/MW2h)
% d ($/h)  (valve point effect coefficient)
% e (rad/MW) (valve point effect coefficient)

coef_cout = [...
    0 0 0 0 0 0 0
    1.7365 10 7.1429 10 1.81 10 2.439
    0.0017 0.0100 0.0071 0.0100 0.0018 0.0100 0.0024
    200 200 200 250 220 200 300
    0.084 0.084 0.084 0.063 0.077 0.084 0.042
 
];


% Generator capacity limits Pmin (MW), Pmax (MW)
limits = [...
    0.50 5.76
    0.10 1.00
    0.20 1.40
    0.10 1.00
    0.40 5.50
    0.10 1.00
    0.30 4.10

];



% Emission coefficient
% alpha (lb/h)
% beta (lb/MWh)
% gamma (lb/MW2h)
% nu (lb/h)
% xeta (1/MW)

coef_emission = [...
    0.0126e-2 0.0210e-2 0.0194e-2 0.0210e-2 0.0134e-2 0.0210e-2 0.0152e-2
    -0.9e-2 -0.1e-2 -0.2e-2 -0.1e-2 -0.82e-2 -0.1e-2 -0.76e-2
    22.983e-2 26.313e-2 25.888e-2 26.313e-2 23.104e-2 26.313e-2 23.736e-2

];


% POZ constraints
poz_limit = {...
    [100 200] [325 425] [450 500]
    [20 30] [45 55] [85 95]
    [40 50] [75 95] [105 115]
    [30 40] [55 60] [80 85]
    [200 300] [380 480] [500 530]
    [15 25] [35 45] [75 85]
    [40 140] [190 240] [320 370]

    };





