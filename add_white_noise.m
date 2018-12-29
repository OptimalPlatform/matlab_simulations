function [y] = add_white_noise(y,noise_amp)

L = length(y);
y = y + noise_amp*randn(1,L);

