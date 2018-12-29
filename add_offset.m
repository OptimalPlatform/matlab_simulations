function [y] = add_offset(y,offset)
L = length(y);
y = y + offset*ones(1,L);