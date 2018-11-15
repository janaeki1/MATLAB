% hw3.m
% 
% Author: Jerome Anaeki
% Account: janaeki1
% CSc 4630/6630     Homework #3
% Due Date: 9/11/18
%
% Description:
% This program displays odd numbers from 11 to 17 using a for loop. It also
% displays even numbers from 4 to 12 using a while loop.


disp("odd numbers 11 to 17"); %displays text

for i = 11:2:17 %creates array of odd numbers from 11 to 17
    disp(i); %displays each element in array
end


disp("even numbers 4 to 12"); %displays text

j = 1; %initializes index to 1
even = 4:2:12;  %creates array of even numbers from 4 to 12
while j <= length(even) %tests to see if index is within array
    disp(even(j)); %displays each element in array
    j = j + 1; %increases index by 1
end
