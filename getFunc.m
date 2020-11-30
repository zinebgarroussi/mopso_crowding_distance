
function [limits,d,Nf,Nc,CostFunction,label,ConstraintFunction]=getFunc(test_func)
% OUTPUT :
% limits = lower and upper bound limits. (State variables boundaries)
% d = Dimension.
% CostFunction = test function
% Nf = Number of objective function
% Nc = Number of constraint
% label : for plot
% ConstraintFunction if Nc~=0


% Case 1 :  ZDT 1
% Case 2 :  ZDT 2
% Case 3 :  ZDT 3
% Case 4 :  ZDT 4
% Case 5 :  ZDT 6
% --------------------------------------------------
% Case 6 :  Golinski
% Case 7 :  ConstrExp
% Case 8 :  Fonseca and Fleming
% Case 9 :  Binh
% Case 10 :  VNT
% Case 11 :  Osyczka
% Case 12 :  CTP1
% Case 13 :  Poloni
% Case 14 :  Schaffer1
% Case 15 :  Schaffer2
% Case 16 :  Kursawe
% Case 17 :  TestFunction4
% Case 18 :  SRN
% Case 19 :  Water
% Case 20 :  Tanaka
% Case 21 :  FourBarTruss
% Case 22 :  cantileverbeam
% Case 23 :  EED without losses and without valve point effect in IEEE 30 BUS Test System
% Case 24 :
% Case 25 :
% Case 26 :
% Case 27 :
% Case 28 :
% Case 29 :
% Case 30 :


label     = {'f_{1}','f_{2}'};

switch(test_func)
    case 1 % ZDT 1
        d = 30;
        limits = repmat([0 1], d, 1);
        CostFunction=@ZDT1;
        Nf = 2;
        Nc=0; % Number of constraint
        ConstraintFunction=NaN;
        
        
    case 2 % ZDT 2
        d = 30;
        limits = repmat([0 1], d, 1);
        Nf = 2;
        Nc=0; % Number of constraint
        ConstraintFunction=NaN;
        CostFunction=@ZDT2;
        
    case 3 % ZDT 3
        d = 30;
        limits  = repmat([0 1], d, 1);
        CostFunction=@ZDT3;
        Nf = 2;
        Nc=0; % Number of constraint
        ConstraintFunction=NaN;
        
        
    case 4 % ZDT 4
        d = 10;
        limits = [0 1;-5 5;-5 5;-5 5;-5 5;-5 5;-5 5;-5 5;-5 5;-5 5];
        CostFunction=@ZDT4;
        Nf = 2;
        Nc=0; % Number of constraint
        ConstraintFunction=NaN;
        
        
        
        
    case 5 % ZDT 6
        d = 10;
        limits  = repmat([0 1], d, 1);
        CostFunction=@ZDT6;
        Nf = 2;
        Nc=0; % Number of constraint
        ConstraintFunction=NaN;
        
        
    case 6 % Golinski
        d = 7; % Number of decision variable
        limits = [2.6,3.6; 0.7, 0.8; 17.0, 28.0; 7.3, 8.3; 7.3, 8.3; 2.9, 3.9; 5.0, 5.5];% Lower and upper bound
        CostFunction=@Golinski; % Objective function handle
        Nf = 2; % Number of objectives
        Nc=11; % Number of constraint
        ConstraintFunction=@GolinskiConstraint;
        
        
    case 7 % ConstrExp
        limits=[0.1,1;0,5];
        d=2;
        Nf=2;
        Nc=2; % Number of constraint
        CostFunction=@ConstrExp; % Objective function handle
        ConstraintFunction=@ConstrExpConstraint;
        
    case 8 % Fonseca
        limits=[-4,4;-4,4;-4,4];
        d=3;
        Nf=2;
        Nc=0; % Number of constraint
        CostFunction=@FON; % Objective function handle
        ConstraintFunction=NaN;
        
    case 9 % Binh
        limits=[0 5;0 3];
        
        d=2;
        Nf=2;
        Nc=2; % Number of constraint
        CostFunction=@Binh; % Objective function handle
        ConstraintFunction=@BinhConstraint;
    case 10 % VNT
        limits=[-3,3;-3,3];
        d=2;
        Nf=3;
        Nc=0; % Number of constraint
        CostFunction=@VNT; % Objective function handle
        ConstraintFunction=NaN;
    case 11 % Osyczka2
        limits=[0,10;0,10;1 5;0 6;1 5;0 10];
        d=6;
        Nf=2;
        Nc=6; % Number of constraint
        CostFunction=@Osyczka2; % Objective function handle
        ConstraintFunction=@Osyczka2Constraint;
    case 12 % CTP1
        limits=[0,1;0,1];
        d=2;
        Nf=2;
        Nc=2; % Number of constraint
        CostFunction=@CTP1; % Objective function handle
        ConstraintFunction=@CTP1Constraint;
    case 13 % Poloni
        limits=[-pi,pi;-pi,pi];
        d=2;
        Nf=2;
        Nc=0; % Number of constraint
        CostFunction=@Poloni; % Objective function handle
        ConstraintFunction=NaN;
    case 14 % Schaffer 1
        limits=[-100000,100000];
        d=1;
        Nf=2;
        Nc=0; % Number of constraint
        CostFunction=@SCH1; % Objective function handle
        ConstraintFunction=NaN;
    case 15 % Schaffer 2
        limits=[-5,10];
        d=1;
        Nf=2;
        Nc=0; % Number of constraint
        CostFunction=@SCH2; % Objective function handle
        ConstraintFunction=NaN;
    case 16 % Kursawe
        limits=[-5,5;-5,5;-5,5;];
        d=3;
        Nf=2;
        Nc=0; % Number of constraint
        CostFunction=@Kur; % Objective function handle
        ConstraintFunction=NaN;
    case 17 % Test case 4
        limits=[-7,4;-7,4];
        d=2;
        Nf=2;
        Nc=3; % Number of constraint
        CostFunction=@Test4; % Objective function handle
        ConstraintFunction=@Test4Constraint;
    case 18 % SRN
        limits=[-20,20;-20,20];
        d=2;
        Nf=2;
        Nc=2; % Number of constraint
        CostFunction=@SRN; % Objective function handle
        ConstraintFunction=@SRNConstraint;
    case 19 % Water
        limits=[0.01,0.45;0.01,0.10;0.01,0.10];
        d=3;
        Nf=5;
        Nc=7; % Number of constraint
        CostFunction=@Water; % Objective function handle
        ConstraintFunction=@WaterConstraint;
    case 20 % Tanaka
        limits=[10e-5,pi;10e-5,pi];
        d=2;
        Nf=2;
        Nc=2; % Number of constraint
        CostFunction=@TNK; % Objective function handle
        ConstraintFunction=@TNKConstraint;
    case 21 % FOUR BAR TRUSS
        F_     = 10   ; % 10kN
        sigma_ = 10   ; % 10kN/cm2 ;
        limits=[F_/sigma_,3*(F_/sigma_);sqrt(2.0)*(F_/sigma_), 3*(F_/sigma_);sqrt(2.0)*(F_/sigma_),3*(F_/sigma_);F_/sigma_,3*(F_/sigma_)];
        d=4;
        Nf=2;
        Nc=0; % Number of constraint
        CostFunction=@FourBarTruss; % Objective function handle
        ConstraintFunction=NaN;
    case 22 % cantileverbeam
        limits=[0.01,0.05;0.20,1.00];
        d=2;
        Nf=2;
        Nc=2; % Number of constraint
        CostFunction=@cantileverbeam; % Objective function handle
        ConstraintFunction=@cantileverbeamConstraint;
        label     = {'Weight (kg)','Deflection (m)'}; % I'm going to use it in the plots
        
    case 23 % EED without losses and without valve point effect in IEEE 30 BUS Test System
        %load data_30_bus.mat
        limits = [...
            0.05 0.50
            0.05 0.60
            0.05 1.00
            0.05 1.20
            0.05 1.00
            0.05 0.60
            ];
        
        d=6;
        Nf=2;
        Nc=2; % Number of constraint
        CostFunction=@eed_without_ploss; % Objective function handle
        ConstraintFunction=@eed_without_plossConstraint;
        label = {'Fuel cost ($/h)','Emission Cost (ton/h)'};
    case 24 % EED with losses and without valve point effect in IEEE 30 BUS Test System
        %load data_30_bus.mat
        limits = [...
            0.05 0.50
            0.05 0.60
            0.05 1.00
            0.05 1.20
            0.05 1.00
            0.05 0.60
            ];
        
        d=6;
        Nf=2;
        Nc=2; % Number of constraint
        CostFunction=@eed_with_ploss; % Objective function handle
        ConstraintFunction=@eed_with_plossConstraint;
        label = {'Fuel cost ($/h)','Emission Cost (ton/h)'};
    case 25 % EED with valve point effect in IEEE 30 BUS Test System
        %load data_30_bus.mat
        limits = [...
            0.05 0.50
            0.05 0.60
            0.05 1.00
            0.05 1.20
            0.05 1.00
            0.05 0.60
            ];
        
        d=6;
        Nf=2;
        Nc=2; % Number of constraint
        CostFunction=@eed_with_valve; % Objective function handle
        ConstraintFunction=@eed_with_valveConstraint;
        label = {'Fuel cost ($/h)','Emission Cost (ton/h)'};
        
    case 26 % EED with POZ in IEEE 30 BUS Test System
        %load data_30_bus.mat
        limits = [...
            0.05 0.50
            0.05 0.60
            0.05 1.00
            0.05 1.20
            0.05 1.00
            0.05 0.60
            ];
        
        d=6;
        Nf=2;
        Nc=3; % Number of constraint
        CostFunction=@eed_with_poz; % Objective function handle
        ConstraintFunction=@eed_with_pozConstraint;
        label = {'Fuel cost ($/h)','Emission Cost (ton/h)'};        
        
        
    otherwise
        fprintf('Wrong number of test problems entered, hence exiting ');
end
end