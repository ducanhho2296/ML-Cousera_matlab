function [lambda_vec, error_train, error_val] = ...
    validationCurve(X, y, Xval, yval)


% Selected values of lambda 
lambda_vec = [0 0.001 0.003 0.01 0.03 0.1 0.3 1 3 10]';

% You need to return these variables correctly.
error_train = zeros(length(lambda_vec), 1);
error_val = zeros(length(lambda_vec), 1);


m = zeros(length(lambda_vec),2);
n = length(X);
for i = 1:length(lambda_vec)
  lambda = lambda_vec(i);
  theta = trainLinearReg(X,y,lambda);
  error_train(i) = linearRegCostFunction(X,y,theta,0);
  error_val(i) = linearRegCostFunction(Xval,yval,theta,0); 
endfor;

error_train = error_train(:);
error_val = error_val(:);

% =========================================================================

end
