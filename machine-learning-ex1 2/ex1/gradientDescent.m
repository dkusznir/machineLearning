function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %







    % ============================================================

    % Save the cost J in every iteration 
    x = X(:,2);
    h = theta(1) + (theta(2)*x);
    
    theta_x = theta(1) - alpha * (1/m) * sum(h-y);
    theta_y = theta(2) - alpha * (1/m) * sum((h-y).*x);
    
    theta = [theta_x; theta_y];
    
    J_history(iter) = computeCost(X, y, theta);

    
end
    disp(min(J_history));
end
