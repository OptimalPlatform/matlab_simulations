function [res] = kalman_filter_MD(y)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here

Len = length(y);
x_est_vec = zeros(1,Len);

for n=1:Len
    % Measurement update:
  	K       = MSE_pred*H'*inv(H*MSE_pred*H' + C_w);
  	x_est   = x_pred + K*(y - H*x_pred);
  	MSE_est = (I - K*H)*MSE_pred;
 
    % Time update:
  	x_pred   = A*x_est;
  	MSE_pred = A*MSE_est*A' + B*C_u*B';
    
    
    % save data
    x_est_vec(n) = x_est(1);
 
end 


res = x_est_vec;
end

