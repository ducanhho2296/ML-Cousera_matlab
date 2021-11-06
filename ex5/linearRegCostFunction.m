function [J, grad] = linearRegCostFunction(X, y, theta, lambda)


% Initialize some useful values
m = length(y); % number of training examples

J = 0;
grad = zeros(size(theta));

h_theta = X * theta;

J = 1 /(2*m) * sum((h_theta - y).^2) + (lambda/(2*m)) * sum(theta(2:end,1).^2);

temp = theta;
temp(1) = 0;


grad = (1/m * ((h_theta -y)' * X)) + lambda/m * temp';
% =========================================================================

grad = grad(:);

end
