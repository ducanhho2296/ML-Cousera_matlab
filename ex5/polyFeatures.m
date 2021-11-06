function [X_poly] = polyFeatures(X, p)



% You need to return the following variables correctly.
X_poly = zeros(numel(X), p);

% ====================== YOUR CODE HERE ======================
% Instructions: Given a vector X, return a matrix X_poly where the p-th 
%               column of X contains the values of X to the p-th power.
%
% 
X_poly(:,1) = X(:,1);

for i = 2:p
  X_poly(:,i) = X(:,1).^i;
endfor;



% =========================================================================

end
