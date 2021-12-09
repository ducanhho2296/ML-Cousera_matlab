function [mu sigma2] = estimateGaussian(X)

[m, n] = size(X);


mu = ((1/m) * sum(X))';

sigma2 = ((1/m) *  (sum((X - mu').^2)))';









% =============================================================


end
