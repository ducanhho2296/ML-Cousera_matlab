function [X_poly] = polyFeatures(X, p)

X_poly = zeros(numel(X), p);
X_poly(:,1) = X(:,1);

for i = 2:p
  X_poly(:,i) = X(:,1).^i;
endfor;
% =========================================================================

end
