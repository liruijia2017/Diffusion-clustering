function [D,T,r] = DivideData(kNN,matV,k,eps)
n = size(kNN,1); 
CA = matV(:,2:k+1); 
r = sum(CA,2) / k;
threshold = sum(repmat(r', [n,1]) .* double(kNN ~= 0),2) / k;
D = find(r <= threshold*(1 + eps)); % diffusible points
T = find(r > threshold*(1 + eps)); % terminal points
