%% Main Script
% This is the main Script. Run to see analysis.

clc
clear
LoadData;  % Calls LoadData script
Plot;  % Calls Plot script
EmissionsPlot;  % Calls EmissionsPlot script
% Warning in fit is due to covengerence of system of equations
fit;  % Calls fit script