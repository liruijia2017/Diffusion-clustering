%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                         
% The code for testing the algorithm DC on eight datasets.
% Written by Ruijia Li (ruijia2017@163.com), UESTC, June 1, 2022.
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function Label = DC(X,k,eps)
%% Input
% X: data matrix (numSamp x dimSamp, dimSamp is the dimension)
% k: the parameter
% eps: the parameter
%% Output
% Label: label of the data

%% Euclidean distances of pairwise data points
Distance = EuclidDistance(X,X); 

%% Sorted Euclidean distance
[matV,matID] = sort(Distance,2); 

%% KNN graph
kNN = SparseGraph(Distance,matID,k); 

%% The data points are divided into diffusible points and terminal points
[D,T,r] = DivideData(kNN,matV,k,eps);

%% Clustering
Label = Clustering(kNN,D,T,r); 
