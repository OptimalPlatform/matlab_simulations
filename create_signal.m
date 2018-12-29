

% 
%   fs: Sampling frequncy
%   Time: seconds duration
%   amplitude: determines how loud the signal becomes,
%   This should correspond to how high voltage it outputs!
%   To do: Find out what voltages it does correspond to
% 
fs = 8000; % 8000 
Time = 1; 
sine_amplitude = 1.0; 
noise_amplitude = 0.5;
[t,y_true] = create_sine_wave(480,sine_amplitude,fs,Time);
[y] = add_white_noise(y_true,noise_amplitude);
%[y] = add_offset(y,sine_amplitude/2);