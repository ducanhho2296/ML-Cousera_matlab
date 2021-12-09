function [mu sigma2] = estimateGaussian(X)

mu = ((1/m) * sum(X))';

sigma2 = ((1/m) *  (sum((X - mu').^2)))';





% =============================================================


end
