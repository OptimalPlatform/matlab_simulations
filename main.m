% Script for kalman 1D, 2D, 3D and 4D. 
clear all;
close all;

decide_parameters;

% The saved signal is denoted: y
%load_signal;
create_signal;

which_filter = 2;

switch which_filter
    case 1
        initialize_matrices_1D;
    case 2
        initialize_matrices_2D;
    case 3
        initialize_matrices_3D;
    case 4
        initialize_matrices_4D;
    otherwise
        disp('No filter chosen')
end

kalman_filter;
x_estimate = res;
%[x_estimate] = kalman_filter_MD(y);

plot_data; % plot x, y and x/y_true




