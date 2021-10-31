function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
theta_0 = theta(1,1);
theta_j = zeros(2:size(theta,1),1);
theta_j = theta(2:size(theta,1),1);

sig_func = sigmoid(X* theta);
sig_func_0 = sigmoid(X(:,1)* theta_0);
sig_func_j = sigmoid(X(:,2:size(X,2))* theta_j); %size(X,2): 2 là lay so cot
                                            %vì size(X) = [so hàng, so cot]
%size(sig_func_j) = (118,1)


grad(1,1) = 1/m * sum((sig_func - y) .* X(:,1));

for i = 2:size(theta,1)
    grad(i,1) = (1/m * sum((sig_func - y) .*... % result of sum = int
          X(:,i))) + (lambda/ m) * theta(i);
endfor

%grad(2:size(theta,1),1) = 1/m * sum((sig_func_j - y(2:size(y,1))) .*...
 %     X(2:size(X,1),2:size(X,2))) - lambda/(2*m) * s;


J = 1/m *(sum((-y) .* log(sig_func) - (1 - y) .* log(1 - sig_func))) + ...
                lambda/(2*m) * sum(theta_j .^2);




% =============================================================

end
