function [theta] = trainLinearReg(X, y, lambda)
%regularization parameter lambda
%   [theta] = TRAINLINEARREG (X, y, lambda) trains linear regression using
% Initialize Theta
initial_theta = zeros(size(X, 2), 1); 

% Create "short hand" for the cost function to be minimized

% Now, costFunction is a function that takes in only one argument

