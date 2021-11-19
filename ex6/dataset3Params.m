function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C_test = [0.01, 0.03, 0.1, 0.3, 1, 1.3, 10, 30];
sigma_test = [0.01, 0.03, 0.1, 0.3, 1, 1.3, 10, 30];
m = length(C_test);
% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
error_svm = zeros(m,m);
for i = 1:m
  for j = 1:m
    C = C_test(i);
    sigma = sigma_test(j);
    mode = svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
    y_pred = svmPredict(mode, Xval);
    error_svm(i,j) = mean(double(y_pred ~= yval)); 
    end;
endfor;

[a, b] = find(error_svm == min(min(error_svm)))
C = C_test(a);
sigma = sigma_test(b);





% =========================================================================

end
