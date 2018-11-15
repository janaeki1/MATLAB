% hmw2.m
% 
% Author: Jerome Anaeki
% Account: janaeki1
% CSc 4630/6630     Homework #2
% Due Date: 9/4/18
%
% Description:
% This program displays even values from the range 200 to 219.

myrange = 200:2:219;

for x = 1:length(myrange)
    y = myrange(x);
    sprintf("array index %d holds the value %d", x, y)
end
