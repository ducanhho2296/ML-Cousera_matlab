function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));


% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

mean_X1 = mean(X(:,1));
mean_X2 = mean(X(:,2));
std_X1 = std(X(:,1));
std_X2 = std(X(:,2));

mu = [mean_X1, mean_X2]
sigma = [std_X1, std_X2]

X1_norm = (X(:,1) - mean_X1) ./ std_X1;
X2_norm = (X(:,2) - mean_X2) ./ std_X2;

X_norm = [X1_norm, X2_norm];





% ============================================================

end
