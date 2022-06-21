function [D,T,r] = DivideData(kNN,matV,k,eps)
n = size(kNN,1); 
CA = matV(:,2:k+1); 
r = sum(CA,2) / k;
threshold = sum(repmat(r', [n,1]) .* double(kNN ~= 0),2) / k;
D = find(r <= threshold*(1 + eps)); % diffusible points
T = find(r > threshold*(1 + eps)); % terminal points











%% max
% E = (General +eye(n)) ~= 0; %
% CA = matV(:,2:k+1);
% minGeneral = min(CA,[],2); 
% maxGeneral = max(CA,[],2); 
% meanGeneral = sum(CA,2) ./ k; 
% meanMax = meanGeneral ; %+ maxGeneral+ minGeneral;
% LocalMax = zeros(n,1);
% for i = 1:n
%     LocalMax(i) = max(meanMax(matID(i,2:k+1)));
% end
% R = meanMax ./ LocalMax; 
% CPone = find(R >= r);
%%
% E = (General+eye(n)) ~= 0;
% %meanGeneral = matV(:,2); 
% meanGeneral2 = sum(General,2) ./ k; 
% meanGeneral = std(matV(:,2:k+1),0,2) .* meanGeneral2;
% MatmeanGeneral = repmat(meanGeneral', [n,1]) .* double(E);
% GeneralLocal = sum(MatmeanGeneral,2) ./ k;
% CPone = find(meanGeneral < GeneralLocal);
%%
% CPtwo = [];
% E = (kNN+eye(n)) ~= 0;
% numLink = sum(kNN ~= 0,2);
% weightLink = sum(kNN,2);
% meanDensity = (numLink.^2)./weightLink;
% MatDensity = repmat(meanDensity', [n,1]) .* double(E);
% DensityLocal = sum(MatDensity,2) ./ numLink;
% CPtwo = find(meanDensity >= DensityLocal);
%%
% meanAll = mean(meanGeneral);
% meanAll = zeros(n,1);
% for i = 1:n
%     meanAll(i) = min(meanGeneral(E(i,:)));
% end