% Name: 
%   initialize_matrices_3D

x_pred = [x_pred_par(1) x_pred_par(2) x_pred_par(3)]';

A = [-A_par(2) 1 0; 
    -A_par(3) 0 1;
    -A_par(4) 0 0];

B = [B_par(1) B_par(2) B_par(3)]';

H = [1 0 0];

MSE_pred = [MSE_pred_par 0 0; 
            0 MSE_pred_par 0;
            0 0 MSE_pred_par];

C_w = C_w_par;

C_u = C_u_par;

I = [1 0 0;
     0 1 0;
     0 0 1];