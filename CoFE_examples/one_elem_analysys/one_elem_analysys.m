
%% Clear memory and set path
clearvars; close all; clc
home = pwd; cd ..; cd ..; base = pwd; cd(home);
addpath(fullfile(base,'CoFE_toolbox'))

%% CASE data
inputFile = 'one_elem.bdf';
CASE = case_obj;
CASE.SOL = 101;
CASE.SPC = 1;
CASE.LOAD = 1;
%CASE.METHOD = 30;
%CASE.STRESS = 1;
%CASE.STRAIN = 1;
%CASE.ESE = 1;
%CASE.EKE = 1;
%CASE.PRINT = 1;


%% Run CoFE
FEM = CoFE_analysis(inputFile,CASE);

%% Post process
CoFE_view(FEM);
view(0,0)
%axis([-50 850 -1 1 -500 125])
axis equal
