%
% f: tone/sine frequency.
% amp: amplitude of sine wave.
% fs: sampling frequnecy of sine wave.
%
function [t,y] = create_sine_wave(f,amp,fs,T)
ts=1/fs;
t=0:ts:T;
y=amp*sin(2*pi*f*t);
sound(y,fs)