function [mu sigma2] = estimateGaussian(X)

[m, n] = size(X);

mu = zeros(n, 1);
sigma2 = zeros(n, 1);


mu = ((1/m) * sum(X))';

sigma2 = ((1/m) *  (sum((X - mu').^2)))';






% =============================================================


end
