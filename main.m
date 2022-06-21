%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                         
% The code for testing the algorithm DC on eight datasets.
% Written by Ruijia Li (ruijia2017@163.com), UESTC, June 1, 2022.
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all; clc; clear; addpath(genpath(pwd)); tic 

%% test 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load vary                            % load the dataset
k = 100; eps = 0.10;                 % set the parameters       

%% test 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load D31                             % load the dataset
% k = 100; eps = -0.03;                % set the parameters 

%% test 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load t88k                            % load the dataset
% k = 30; eps = 0.10;                  % set the parameters 

%% test 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load jaffe; X=double(X);             % load the dataset
% k = 20; eps = 0.10;                  % set the parameters 
% X = Data_Normalized2(X);             % normalize the data 

%% test 4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load breast;                         % load the dataset
% k = 100; eps = 0.10;                 % set the parameters 
% X = Data_Normalized1(X,0,1);         % normalize the data 

%% test 5 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load vote;                           % load the dataset
% k = 80; eps = 0.09;                  % set the parameters 
% X = Data_Normalized1(X,0,1);         % normalize the data 

%% test 7 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load handwritten;                    % load the dataset
% k = 70; eps = -0.02;                 % set the parameters 
% X = Data_Normalized1(X,0,1);         % normalize the data 

%% test 8 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load USPS;                           % load the dataset
% k = 60; eps = -0.03;                 % set the parameters 
% X = Data_Normalized1(X,0,1);         % normalize the data 

Label = DC(X, k, eps);
Fmeasure = F_measure(Y, Label); toc
% FigureCluster(X, Label)

