function kNN = SparseGraph(Distance,matID,k)
n = size(Distance,1);
kNN = zeros(n);
for i = 1:n
    id = matID(i,2:k+1);
    kNN(i,id) = Distance(i,id);
end







