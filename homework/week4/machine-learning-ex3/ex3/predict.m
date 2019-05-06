function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

% 查看矩阵大小，基本都需要加theta0项
a1 = [ones(m, 1) X];
z2 = a1*Theta1';
a2 = sigmoid(z2);

% 查看矩阵大小，基本都需要加theta0项
a2 = [ones(m, 1) a2];
z3 = a2*Theta2';
a3 = sigmoid(z3);
pred = a3;

% pred得到的都是概率p，不是标签，标签需要去检索index
pred_v = zeros(m,1);
[pred_v,p] = max(pred,[],2);


% =========================================================================


end