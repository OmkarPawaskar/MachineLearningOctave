function p = predictOneVsAll(all_theta, X)
%PREDICT Predict the label for a trained one-vs-all classifier. The labels 
%are in the range 1..K, where K = size(all_theta, 1). 
%  p = PREDICTONEVSALL(all_theta, X) will return a vector of predictions
%  for each example in the matrix X. Note that X contains the examples in
%  rows. all_theta is a matrix where the i-th row is a trained logistic
%  regression theta vector for the i-th class. You should set p to a vector
%  of values from 1..K (e.g., p = [1; 3; 1; 2] predicts classes 1, 3, 1, 2
%  for 4 examples) 

m = size(X, 1);
num_labels = size(all_theta, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% Add ones to the X data matrix
X = [ones(m, 1) X];

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned logistic regression parameters (one-vs-all).
%               You should set p to a vector of predictions (from 1 to
%               num_labels).
%
% Hint: This code can be done all vectorized using the max function.
%       In particular, the max function can also return the index of the 
%       max element, for more information see 'help max'. If your examples 
%       are in rows, then, you can use max(A, [], 2) to obtain the max 
%       for each row.
%       

% Coverts to matrix of 5000 examples vs. num_lables (each sample has num_labels of corresponding prob
z=X*all_theta';
% Sigmoid function converts to p between 0 to 1
h=sigmoid(z);

% pval returns the highest value in each row, while p returns the position in each row
[pval,p]=max(h,[],2); 
%for eg: 
 % x =

  %  2    4    5   11    3   16   18    9
   
  %>> [a,b] = max(x,[],2)
%a =  18
%b =  7 

% Later in ex3 file, the p will be used to match the y and predict the training accuracy





% =========================================================================


end
