% Generate a sparse n x n symmetric, positive definite matrix with
% approximately density*n*n non-zero elements

function A = generatesparseSPDmatrix(n,density)
% generate a random n x n matrix
A = sprandsym(n,density); 

% since A(i,j) < 1 by construction and a symmetric diagonally dominant matrix
%   is symmetric positive definite, which can be ensured by adding nI
A = A + n*speye(n);
end