%=====================================================================%
% Multiobjective particle swarm with Crowding Distance(MOPSO-CD)
%=====================================================================%


% -------------------------------------------------------
% | Developed by:   Zineb GARROUSSI                     |
% |                 zineb.garroussi@gmail.com           |
% |                 Rachid ELLAIA                       |
% |                 ellaia@emi.ac.ma                    |
% |                 Ecole Mohammadia d'ingénieurs       |
% |                 Rabat, Morocco.                     |
% -------------------------------------------------------
clc;
clear all;
clear global;
close all;
format long;
global swarmSize;
global archiveSize;
global maxIterations;
global limits;
global CostFunction;
global ConstraintFunction;
global d;
global Nc;
global Nf;
global perturbationIndex;
global mutationProbability;
global pop;
global archive;
global runno; % Number of independant run
runno=1;


maxIterations=300;
swarmSize=20;
archiveSize=100;
funcDispaly;
test_func =input('Number of test problem:');
[limits,d,Nf,Nc,CostFunction,label,ConstraintFunction]=getFunc(test_func);
mutationProbability = 1.0/d ;
perturbationIndex = 0.5;
for run=1:runno
tic
execute()
toc
end
%results=reshape([archive.Cost],[],2);
   for r=1:numel(archive)
   results(r,:)=archive(r).Cost;
   end

%%%%%%%%%%%%%%%%%%%%%% PLOT Pareto front %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 TrueParetoFront=load('.\true pareto front\ZDT6_PF.pf');

% Plot function
if Nf == 2;
    figure;
    plot(results(:,1),results(:,2),'rx');
    %plot(TrueParetoFront(:,1),TrueParetoFront(:,2),'y.',results(:,1),results(:,2),'b.','MarkerSize',13,'MarkerFaceColor','g');

    hold on;
    grid on;
    title('Pareto Front','FontSize',18);
    xlabel(label{1},'FontSize',16);
    ylabel(label{2},'FontSize',16);
    legend('\fontsize{10}\bf Improved OMOPSO',1);
    
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if Nf == 3;
    figure;
    plot3(results(:,1),results(:,2),results(:,3),'rx');
    hold on;
    grid on;
    title('Pareto Front of','FontSize',18);
    xlabel(label{1},'FontSize',16);
    ylabel(label{2},'FontSize',16);
    zlabel(label{3},'FontSize',16);
    legend('\fontsize{10}\bf Improved OMOPSO',1);
    
end
DG1